classdef ControladorBasadoEnEventosSOD4 < handle
    properties
        num
        den
        Ts
        ref
        kp
        ki
        kd = 0;
        elim
        hmax
        Sat
        nit;
        u
        ui
        r
        e
        y
        count
        G1
        %settlingTime
        %maxOvershoot
        %mse
        iae
        ise
        itae
        itse
        t_data
        r_data
        y_data
        u_data
        count_data
        e_data
    end
    
    methods
        function obj = ControladorBasadoEnEventosSOD4(num, den, Ts, ref, kp, ki, elim, hmax, Sat, nit)
            obj.num = Validador.validarVector(num, 'Numerador');
            obj.den = Validador.validarVector(den, 'Denominador');
            obj.Ts = Validador.validarEscalarPositivo(Ts, 'Tiempo de muestreo');
            obj.ref = Validador.validarEscalar(ref, 'Referencia');
            obj.kp = Validador.validarEscalar(kp, 'Kp');
            obj.ki = Validador.validarEscalar(ki, 'Ki');
            obj.elim = Validador.validarEscalarPositivo(elim, 'Límite de error');
            obj.hmax = Validador.validarEscalarPositivo(hmax, 'Hmax');
            obj.Sat = Validador.validarEscalarPositivo(Sat, 'Saturación');
            obj.nit = Validador.validarEnteroPositivo(nit, 'Número de iteraciones');
            obj.G1 = tf(num, den);
            
            obj.u = zeros(1, obj.nit);
            obj.ui = zeros(1, obj.nit);
            obj.r = [zeros(1, 5), ref * ones(1, obj.nit - 5)];
            obj.e = zeros(1, obj.nit);
            obj.y = zeros(1, obj.nit);
            obj.count = zeros(1, obj.nit);
        end
        
        function simular(obj)
            ui_k_1 = 0;
            ud_k_1 = 0;
            es_k_1 = 0;
            u_k_1 = 0;
            h_k_1 = 0;
            y_k_1 = 0;

            for k = 3:obj.nit
                t = 0:obj.Ts:(k-1)*obj.Ts;
                obj.y(1:k) = lsim(obj.G1, obj.u(1:k), t, 'zoh')';
                
                hact = h_k_1 + obj.Ts;
                obj.e(k) = obj.r(k) - obj.y(k);
                
                if abs(obj.e(k) - es_k_1) > obj.elim || hact >= obj.hmax
                    es_k_1 = obj.e(k);
                    up = obj.kp * obj.e(k);
                    ud = (obj.kd / (obj.kd + obj.ki * obj.Ts)) * (ud_k_1 - obj.ki * (obj.y(k) - y_k_1));
                    obj.u(k) = up + obj.ui(k-1) + ud;
                    obj.ui(k) = obj.ui(k-1) + (obj.ki * hact) * obj.e(k);
                    hact = 0;
                    obj.count(k) = 1;
                    y_k_1 = obj.y(k);
                else
                    obj.e(k) = es_k_1;
                    obj.ui(k) = ui_k_1;
                    obj.u(k) = u_k_1;
                    obj.count(k) = 0;
                end
                
                if obj.u(k) >= obj.Sat
                    obj.u(k) = obj.Sat;
                end
                if obj.u(k) <= 0.0
                    obj.u(k) = 0.0;
                end
                
                es_k_1 = obj.e(k);
                ui_k_1 = obj.ui(k);
                u_k_1 = obj.u(k);
                y_k_1 = obj.y(k);
                h_k_1 = hact;
            end
            
            %obj.calcularIndicesDesempeno();
        end
        
%         function calcularIndicesDesempeno(obj)
%             t = 0:obj.Ts:(obj.nit-1)*obj.Ts;
%             % Calcular tiempo de establecimiento
%             idx = find(abs(obj.y - obj.ref) <= 0.02 * obj.ref, 1, 'last');
%             if isempty(idx)
%                 obj.settlingTime = NaN;
%             else
%                 obj.settlingTime = t(idx);
%             end
%             % Calcular sobreimpulso máximo
%             obj.maxOvershoot = (max(obj.y) - obj.ref) / obj.ref * 100;
%             % Calcular error cuadrático medio
%             obj.mse = mean((obj.ref - obj.y).^2);
%         end
        function calculatePerformanceIndices(obj)
            t = 0:obj.Ts:(obj.nit-1)*obj.Ts;
            obj.iae = sum(abs(obj.e));
            obj.ise = sum(obj.e.^2);
            obj.itae = sum(t .* abs(obj.e));
            obj.itse = sum(t .* obj.e.^2);
        end        
                % Método para exportar datos al workspace
        function exportarDatos(obj, handles)
            axes1_lines = get(handles.axes1, 'Children');
            obj.t_data = get(axes1_lines(1), 'XData');
            obj.r_data = get(axes1_lines(1), 'YData');
            obj.y_data = get(axes1_lines(2), 'YData');

            axes3_line = get(handles.axes3, 'Children');
            obj.u_data = get(axes3_line, 'YData');

            axes2_line = get(handles.axes2, 'Children');
            obj.count_data = get(axes2_line, 'YData');

            axes4_line = get(handles.axes4, 'Children');
            obj.e_data = get(axes4_line, 'YData');

            assignin('base', 't_data', obj.t_data);
            assignin('base', 'r_data', obj.r_data);
            assignin('base', 'y_data', obj.y_data);
            assignin('base', 'u_data', obj.u_data);
            assignin('base', 'count_data', obj.count_data);
            assignin('base', 'e_data', obj.e_data);
        end

        
        function graficarResultados(obj, ax1, ax2, ax3, ax4)
            t = 0:obj.Ts:(obj.nit-1)*obj.Ts;
            axes(ax1);
            plot(t, obj.r, '--r', t, obj.y, '-k', 'LineWidth', 2);
            grid on;
            xlabel('t(s)');
            ylabel('y(t)');
            title('Respuesta al escalón');
            legend('Setpoint', 'Salida', 'Location', 'SouthEast');
            
            axes(ax2);
            stairs(t, obj.u, '-k', 'LineWidth', 2);
            grid on;
            xlabel('t(s)');
            ylabel('u(t)');
            title('Señal de control');
            
            axes(ax3);
            stairs(t, obj.count, '-b', 'LineWidth', 2);
            grid on;
            xlabel('t(s)');
            ylabel('Eventos Activados');
            title('Número de Eventos');
            
            axes(ax4);
            plot(t, obj.e, '-m', 'LineWidth', 2);
            grid on;
            xlabel('t(s)');
            ylabel('e(t)');
            title('Señal de Error');
            % Habilitar zoom y pan para todas las gráficas
            %zoom on;
            %pan on;
    
            % Configurar los ejes para permitir zoom independiente
            linkaxes([ax1, ax2, ax3, ax4], 'x');  % Enlazar ejes x para zoom sincronizado
            
             % Añadir botones de control para zoom y reset
%              uicontrol('Style', 'pushbutton', 'String', 'Zoom X', ...
%                  'Position', [700 470 60 20], 'Callback', @(src,event) zoom(gcf,'xon'));
%              uicontrol('Style', 'pushbutton', 'String', 'Zoom Y', ...
%                  'Position', [760 470 60 20], 'Callback', @(src,event) zoom(gcf,'yon'));
% %              uicontrol('Style', 'pushbutton', 'String', 'Move', ...
% %                   'Position', [640 470 60 20], 'Callback', @(src,event) zoom(gcf,'off'));
%               uicontrol('Style', 'pushbutton', 'String', 'Move', ...
%                   'Position', [640 470 60 20], 'Callback', @(src,event) pan(gcf, 'on'));
        end

%         function resetZoom(ax1, ax2, ax3, ax4)
%             zoom(ax1, 'out');
%             zoom(ax2, 'out');
%             zoom(ax3, 'out');
%             zoom(ax4, 'out');
%             zoom off;
%             pan off;
%         end
        
        function guardarEnExcel(obj, handles, file_path)
            obj.exportarDatos(handles);
            
            data_table = table(obj.t_data', obj.r_data', obj.y_data', obj.u_data', obj.count_data', obj.e_data', ...
                'VariableNames', {'Tiempo', 'Referencia', 'Salida', 'Senial_Control', 'Eventos', 'Error'});
            writetable(data_table, file_path, 'Sheet', 'Datos');
        end
        
        function importarDeExcel(obj, handles, file_path)
            data_table = readtable(file_path);
            obj.t_data = data_table.Tiempo;
            obj.r_data = data_table.Referencia;
            obj.y_data = data_table.Salida;
            obj.u_data = data_table.Senial_Control;
            obj.count_data = data_table.Eventos;
            obj.e_data = data_table.Error;
            
            axes(handles.axes1);
            plot(obj.t_data, obj.r_data, 'b', obj.t_data, obj.y_data, 'r');
            xlabel('Tiempo');
            ylabel('Referencia y Salida');
            legend('Referencia', 'Salida');
            
            axes(handles.axes2);
            plot(obj.t_data, obj.count_data);
            xlabel('Tiempo');
            ylabel('Eventos activados');
            
            axes(handles.axes3);
            plot(obj.t_data, obj.u_data);
            xlabel('Tiempo');
            ylabel('Señal de control');
            
            axes(handles.axes4);
            plot(obj.t_data, obj.e_data);
            xlabel('Tiempo');
            ylabel('Señal de error');
        end

        function limpiarInterfaz(obj, handles)
            % Limpiar los ejes
            cla(handles.axes1);
            cla(handles.axes2);
            cla(handles.axes3);
            cla(handles.axes4);

            % Limpiar textos
            set(handles.text15, 'String', '');
            set(handles.iae1, 'String', '');
            set(handles.ise1, 'String', '');
            set(handles.itae12, 'String', '');
            set(handles.itse12, 'String', '');

            % Restablecer las etiquetas y leyendas de los ejes
            xlabel(handles.axes1, 'Tiempo');
            ylabel(handles.axes1, 'Referencia y Salida');
            legend(handles.axes1, 'Referencia', 'Salida');

            xlabel(handles.axes2, 'Tiempo');
            ylabel(handles.axes2, 'Eventos activados');

            xlabel(handles.axes3, 'Tiempo');
            ylabel(handles.axes3, 'Señal de control');

            xlabel(handles.axes4, 'Tiempo');
            ylabel(handles.axes4, 'Señal de error');
        end

            function [best_elim, best_hmax, elim_values, hmax_values, events_values] = calcularValoresOptimos(obj)
            Elim_range = 0:0.02:1;
            Hmax_range = obj.Ts:obj.Ts:4*obj.Ts;
        
            best_elim = 0;
            best_hmax = 0;
            min_events = inf;
        
            % Inicializar vectores para almacenar los datos de simulación
            elim_values = [];
            hmax_values = [];
            events_values = [];
        
            for elim = Elim_range
                for hmax = Hmax_range
                    obj.elim = elim;
                    obj.hmax = hmax;
                    obj.simular();
                    Nro_eventos = sum(obj.count);
        
                    % Almacenar los valores para graficar
                    elim_values = [elim_values, elim];
                    hmax_values = [hmax_values, hmax];
                    events_values = [events_values, Nro_eventos];
        
                    if Nro_eventos < min_events
                        min_events = Nro_eventos;
                        best_elim = elim;
                        best_hmax = hmax;
                    end
                end
            end
        
            obj.elim = best_elim;
            obj.hmax = best_hmax;
        end
    end
end
