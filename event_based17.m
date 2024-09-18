function varargout = event_based17(varargin)
% EVENT_BASED17 MATLAB code for event_based17.fig
%      EVENT_BASED17, by itself, creates a new EVENT_BASED17 or raises the existing
%      singleton*.
%
%      H = EVENT_BASED17 returns the handle to a new EVENT_BASED17 or the handle to
%      the existing singleton*.
%
%      EVENT_BASED17('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in EVENT_BASED17.M with the given input arguments.
%
%      EVENT_BASED17('Property','Value',...) creates a new EVENT_BASED17 or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before event_based17_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to event_based17_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help event_based17

% Last Modified by GUIDE v2.5 11-Sep-2024 11:42:49

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @event_based17_OpeningFcn, ...
                   'gui_OutputFcn',  @event_based17_OutputFcn, ...
                   'gui_LayoutFcn',  [] , ...
                   'gui_Callback',   []);
if nargin && ischar(varargin{1})
    gui_State.gui_Callback = str2func(varargin{1});
end

if nargout
    [varargout{1:nargout}] = gui_mainfcn(gui_State, varargin{:});
else
    gui_mainfcn(gui_State, varargin{:});
end
% End initialization code - DO NOT EDIT


% --- Executes just before event_based17 is made visible.
function event_based17_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to event_based17 (see VARARGIN)

% Choose default command line output for event_based17
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);
    % Ocultar controles de eventos inicialmente
    set(handles.slider1, 'Visible', 'off');
    set(handles.text16, 'Visible', 'off');
    set(handles.text_elim, 'Visible', 'off');
    set(handles.hmax, 'Visible', 'off');
    set(handles.text_hmax, 'Visible', 'off');
    set(handles.text4, 'Visible', 'off');
    set(handles.text33, 'Visible', 'off');
    set(handles.pushbutton6, 'Visible', 'off');
    set(handles.guardar, 'Visible', 'off');
% UIWAIT makes event_based17 wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = event_based17_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


function num_Callback(hObject, eventdata, handles)
% hObject    handle to num (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of num as text
%        str2double(get(hObject,'String')) returns contents of num as a double
%str2double(get(hObject,'String'));

% --- Executes during object creation, after setting all properties.
function num_CreateFcn(hObject, eventdata, handles)
% hObject    handle to num (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function Kp_Callback(hObject, eventdata, handles)
% hObject    handle to Kp (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of Kp as text
%        str2double(get(hObject,'String')) returns contents of Kp as a double
str2double(get(hObject,'String'));

% --- Executes during object creation, after setting all properties.
function Kp_CreateFcn(hObject, eventdata, handles)
% hObject    handle to Kp (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function Ki_Callback(hObject, eventdata, handles)
% hObject    handle to Ki (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of Ki as text
%        str2double(get(hObject,'String')) returns contents of Ki as a double
str2double(get(hObject,'String'));

% --- Executes during object creation, after setting all properties.
function Ki_CreateFcn(hObject, eventdata, handles)
% hObject    handle to Ki (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function elim_Callback(hObject, eventdata, handles)
% hObject    handle to elim (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of elim as text
%        str2double(get(hObject,'String')) returns contents of elim as a double
str2double(get(hObject,'String'));

% --- Executes during object creation, after setting all properties.
function elim_CreateFcn(hObject, eventdata, handles)
% hObject    handle to elim (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function hmax_Callback(hObject, eventdata, handles)
% hObject    handle to hmax (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of hmax as text
%        str2double(get(hObject,'String')) returns contents of hmax as a double
str2double(get(hObject,'String'));

% --- Executes during object creation, after setting all properties.
function hmax_CreateFcn(hObject, eventdata, handles)
% hObject    handle to hmax (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function den_Callback(hObject, eventdata, handles)
% hObject    handle to den (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of den as text
%        str2double(get(hObject,'String')) returns contents of den as a double
str2double(get(hObject,'String'));

% --- Executes during object creation, after setting all properties.
function den_CreateFcn(hObject, eventdata, handles)
% hObject    handle to den (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function Ts_Callback(hObject, eventdata, handles)
% hObject    handle to Ts (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of Ts as text
%        str2double(get(hObject,'String')) returns contents of Ts as a double
str2double(get(hObject,'String'));

% --- Executes during object creation, after setting all properties.
function Ts_CreateFcn(hObject, eventdata, handles)
% hObject    handle to Ts (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in pushbutton1.
function pushbutton1_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
    try
        num = str2num(get(handles.num, 'String'));
        den = str2num(get(handles.den, 'String'));
        Ts = str2double(get(handles.Ts, 'String'));
        ref = str2double(get(handles.r, 'String'));
        kp = str2double(get(handles.Kp, 'String'));
        ki = str2double(get(handles.Ki, 'String'));
        kd = 0;
        elim = 0;  % Valor por defecto
        hmax = 1000;  % Valor por defecto
        Sat = str2double(get(handles.sat, 'String'));
        nit = str2double(get(handles.nit, 'String')); 

        % Crear instancia de la clase y simular
        controlador = ControladorBasadoEnEventosSOD4(num, den, Ts, ref, kp, ki, elim, hmax, Sat, nit);
        controlador.simular();
        
        % Graficar resultados en la interfaz
        controlador.graficarResultados(handles.axes1, handles.axes2, handles.axes3, handles.axes4);
        
        % Calcular y mostrar índices de desempeño
        controlador.calculatePerformanceIndices();
        set(handles.iae1, 'String', num2str(controlador.iae));
        set(handles.ise1, 'String', num2str(controlador.ise));
        set(handles.itse12, 'String', num2str(controlador.itse));
        set(handles.itae12, 'String', num2str(controlador.itae));

        % Actualizar el valor en el GUI
        set(handles.text16, 'String', num2str(elim));
        set(handles.text15, 'String', num2str(sum(controlador.count)));
        
        % Guardar datos de simulación
        guardarDatosSimulacion(controlador);
                % Habilitar botón para ver resultados
        set(handles.verResultados, 'Enable', 'on');
        set(handles.pushbutton6, 'Visible', 'on');
        set(handles.guardar, 'Visible', 'on');
        set(handles.text33, 'Visible', 'on');
        % Habilitar parámetros de evento
        habilitarParametrosEvento(handles);
        
    catch ME
        % Manejar errores y mostrar mensaje al usuario
        errordlg(['Error: ' ME.message], 'Error de entrada');
    end    


% Función para guardar los datos de simulación
function guardarDatosSimulacion(controlador)
    % Crear un nombre de archivo único basado en la fecha y hora
    filename = ['simulacion_', datestr(now, 'yyyymmdd_HHMMSS'), '.mat'];
    
    % Guardar los datos relevantes
    save(filename, 'controlador');
    
    % Informar al usuario
    msgbox(['Datos de simulación guardados en: ', filename], 'Guardado exitoso');


% Función para habilitar los parámetros de evento
function habilitarParametrosEvento(handles)
    % Hacer visibles los controles de evento
    set(handles.slider1, 'Visible', 'on');
    set(handles.text16, 'Visible', 'on');
    set(handles.text_elim, 'Visible', 'on');  % Asumiendo que tienes una etiqueta para elim
    set(handles.hmax, 'Visible', 'on');  % Asumiendo que tienes un control para hmax
    set(handles.text_hmax, 'Visible', 'on');  % Asumiendo que tienes una etiqueta para hmax
    
    % Establecer valores por defecto
    set(handles.slider1, 'Value', 0);
    set(handles.text16, 'String', '0');
    set(handles.hmax, 'String', '1000');
    
    % Habilitar los controles
    set(handles.slider1, 'Enable', 'on');
    set(handles.hmax, 'Enable', 'on');



function r_Callback(hObject, eventdata, handles)
% hObject    handle to r (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of r as text
%        str2double(get(hObject,'String')) returns contents of r as a double


% --- Executes during object creation, after setting all properties.
function r_CreateFcn(hObject, eventdata, handles)
% hObject    handle to r (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on slider movement.
function slider1_Callback(hObject, eventdata, handles)
% hObject    handle to slider1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider
     try
        num = str2num(get(handles.num, 'String'));
        den = str2num(get(handles.den, 'String'));
        Ts = str2double(get(handles.Ts, 'String'));
        ref = str2double(get(handles.r, 'String'));
        kp = str2double(get(handles.Kp, 'String'));
        ki = str2double(get(handles.Ki, 'String'));
        kd = 0;
        elim = get(handles.slider1,'Value');
        set(handles.text16, 'String',num2str(elim));
        hmax = str2double(get(handles.hmax, 'String'));
        Sat = str2double(get(handles.sat, 'String'));
        nit = str2double(get(handles.nit, 'String')); 

        % Validar que todos los valores sean numéricos
%         if any(cellfun(@(x) isempty(x) || any(isnan(x)), {num, den, Ts, ref, kp, ki, elim, hmax, Sat, nit}))
%             error('Todos los campos deben contener valores numéricos válidos');
%         end
        % Crear instancia de la clase y simular
        controlador = ControladorBasadoEnEventosSOD4(num, den, Ts, ref, kp, ki, elim, hmax, Sat,nit);
        controlador.simular();
        
        % Graficar resultados en la interfaz
        controlador.graficarResultados(handles.axes1, handles.axes2, handles.axes3, handles.axes4);
        
        % % Mostrar índices de desempeño
        % set(handles.textSettlingTime, 'String', num2str(controlador.settlingTime));
        % set(handles.textMaxOvershoot, 'String', num2str(controlador.maxOvershoot));
        %set(handles.textMSE, 'String', num2str(controlador.mse));
        controlador.calculatePerformanceIndices();
        set(handles.iae1, 'String', num2str(controlador.iae));
        set(handles.ise1, 'String', num2str(controlador.ise));
        set(handles.itse12, 'String', num2str(controlador.itse));
        set(handles.itae12, 'String', num2str(controlador.itae));
        % Actualizar el valor en el GUI
        set(handles.text16, 'String', num2str(elim));
        set(handles.text15, 'String', num2str(sum(controlador.count)));
     catch ME
        % Manejar errores y mostrar mensaje al usuario
        errordlg(['Error: ' ME.message], 'Error de entrada');
     end    

% --- Executes during object creation, after setting all properties.
function slider1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to slider1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end



function sat_Callback(hObject, eventdata, handles)
% hObject    handle to sat (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of sat as text
%        str2double(get(hObject,'String')) returns contents of sat as a double


% --- Executes during object creation, after setting all properties.
function sat_CreateFcn(hObject, eventdata, handles)
% hObject    handle to sat (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function nit_Callback(hObject, eventdata, handles)
% hObject    handle to nit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of nit as text
%        str2double(get(hObject,'String')) returns contents of nit as a double


% --- Executes during object creation, after setting all properties.
function nit_CreateFcn(hObject, eventdata, handles)
% hObject    handle to nit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in guardar.
function guardar_Callback(hObject, eventdata, handles)
% hObject    handle to guardar (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
num = str2num(get(handles.num, 'String'));
den = str2num(get(handles.den, 'String'));
Ts = str2double(get(handles.Ts, 'String'));
ref = str2double(get(handles.r, 'String'));
kp = str2double(get(handles.Kp, 'String'));
ki = str2double(get(handles.Ki, 'String'));
kd = 0;
elim = get(handles.slider1, 'Value');
set(handles.text16, 'String', num2str(elim));
hmax = str2double(get(handles.hmax, 'String'));
Sat = str2double(get(handles.sat, 'String'));
nit = str2double(get(handles.nit, 'String')); 

% Crear una instancia del controlador
controlador = ControladorBasadoEnEventosSOD3(num, den, Ts, ref, kp, ki, elim, hmax, Sat, nit);

% Exportar datos
controlador.exportarDatos(handles);

% Mostrar mensaje de confirmación
msgbox('Los datos se han exportado al workspace.', 'Exportación exitosa');


% --- Executes on button press in genexcel.
function genexcel_Callback(hObject, eventdata, handles)
% hObject    handle to genexcel (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% Guardar datos en Excel
num = str2num(get(handles.num, 'String'));
den = str2num(get(handles.den, 'String'));
Ts = str2double(get(handles.Ts, 'String'));
ref = str2double(get(handles.r, 'String'));
kp = str2double(get(handles.Kp, 'String'));
ki = str2double(get(handles.Ki, 'String'));
kd = 0;
elim = get(handles.slider1,'Value');
set(handles.text16, 'String',num2str(elim));
hmax = str2double(get(handles.hmax, 'String'));
Sat = str2double(get(handles.sat, 'String'));
nit = str2double(get(handles.nit, 'String')); 

[file_name, path_name] = uiputfile('*.xlsx', 'Guardar datos en Excel');
if file_name ~= 0
    file_path = fullfile(path_name, file_name);
    controlador = ControladorBasadoEnEventosSOD3(num, den, Ts, ref, kp, ki, elim, hmax, Sat,nit);
    controlador.guardarEnExcel(handles, file_path);
    msgbox('Los datos se han guardado en el archivo Excel.', 'Exportación exitosa');
else
    msgbox('La exportación a Excel ha sido cancelada.', 'Exportación cancelada');
end



% --- Executes on button press in importexcel.
function importexcel_Callback(hObject, eventdata, handles)
% hObject    handle to importexcel (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
num = str2num(get(handles.num, 'String'));
den = str2num(get(handles.den, 'String'));
Ts = str2double(get(handles.Ts, 'String'));
ref = str2double(get(handles.r, 'String'));
kp = str2double(get(handles.Kp, 'String'));
ki = str2double(get(handles.Ki, 'String'));
kd = 0;
elim = get(handles.slider1,'Value');
set(handles.text16, 'String',num2str(elim));
hmax = str2double(get(handles.hmax, 'String'));
Sat = str2double(get(handles.sat, 'String'));
nit = str2double(get(handles.nit, 'String')); 
% Importar datos desde Excel
[file_name, path_name] = uigetfile('*.xlsx', 'Seleccionar archivo Excel');
if file_name ~= 0
    file_path = fullfile(path_name, file_name);
    controlador = ControladorBasadoEnEventosSOD3(num, den, Ts, ref, kp, ki, elim, hmax, Sat,nit);
    controlador.importarDeExcel(handles, file_path);
    msgbox('Los datos se han importado y graficado correctamente.', 'Importación exitosa');
else
    msgbox('La importación del archivo Excel ha sido cancelada.', 'Importación cancelada');
end

% --- Executes on button press in pushbutton5.
function pushbutton5_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
num = str2num(get(handles.num, 'String'));
den = str2num(get(handles.den, 'String'));
Ts = str2double(get(handles.Ts, 'String'));
ref = str2double(get(handles.r, 'String'));
kp = str2double(get(handles.Kp, 'String'));
ki = str2double(get(handles.Ki, 'String'));
kd = 0;
elim = get(handles.slider1,'Value');
set(handles.text16, 'String',num2str(elim));
hmax = str2double(get(handles.hmax, 'String'));
Sat = str2double(get(handles.sat, 'String'));
nit = str2double(get(handles.nit, 'String')); 
controlador = ControladorBasadoEnEventosSOD3(num, den, Ts, ref, kp, ki, elim, hmax, Sat, nit);

% Limpiar la interfaz
controlador.limpiarInterfaz(handles);

% Mostrar mensaje de confirmación
msgbox('Las gráficas se han limpiado correctamente.', 'Limpieza exitosa');

%calculo parametros de evento
function pushbutton6_Callback(hObject, eventdata, handles)
    % Obtener los parámetros necesarios
    num = str2num(get(handles.num, 'String'));
    den = str2num(get(handles.den, 'String'));
    Ts = str2double(get(handles.Ts, 'String'));
    ref = str2double(get(handles.r, 'String'));
    kp = str2double(get(handles.Kp, 'String'));
    ki = str2double(get(handles.Ki, 'String'));
    Sat = str2double(get(handles.sat, 'String'));
    nit = str2double(get(handles.nit, 'String'));

    % Crear y mostrar la barra de progreso
    h = waitbar(0, 'Calculando valores óptimos...', 'Name', 'Progreso');

    % Crear el objeto del controlador
    controlador = ControladorBasadoEnEventosSOD4(num, den, Ts, ref, kp, ki, 0, 0, Sat, nit);

    % Calcular los valores óptimos y almacenar los datos de simulación
    [best_elim, best_hmax, elim_values, hmax_values, events_values] = controlador.calcularValoresOptimos();

    % Cerrar la barra de progreso
    close(h);

    % Mostrar un mensaje con los valores calculados y la opción de usarlos
    message = sprintf('Valores óptimos calculados:\n\nElim = %.2f\nHmax = %.2f\n\n¿Desea usar estos valores para la simulación?', best_elim, best_hmax);
    choice = questdlg(message, 'Valores Óptimos', 'Sí', 'No', 'Sí');

    % Si el usuario elige usar los valores, actualizar la interfaz y ejecutar la simulación
    if strcmp(choice, 'Sí')
        set(handles.slider1, 'Value', best_elim);
        set(handles.text16, 'String', num2str(best_elim));
        set(handles.hmax, 'String', num2str(best_hmax));

        % Deshabilitar el slider
        set(handles.slider1, 'Enable', 'off');

        % Ejecutar la simulación con los mejores valores encontrados
        pushbutton1_Callback(hObject, eventdata, handles);

        % Habilitar el slider después de la simulación
        set(handles.slider1, 'Enable', 'on');
        set(handles.slider1, 'Min', 0);
        set(handles.slider1, 'Max', 1);
    else
        % Si el usuario elige no usar los valores, habilitar el slider
        set(handles.slider1, 'Enable', 'on');
        set(handles.slider1, 'Min', 0);
        set(handles.slider1, 'Max', 1);
        set(handles.slider1, 'Value', best_elim);
        set(handles.text16, 'String', num2str(best_elim));

        % Mostrar un mensaje indicando que el usuario puede ajustar Elim manualmente
        msgbox('Puede ajustar el valor de Elim usando el slider.', 'Ajuste manual', 'help');
    end

    % Graficar los resultados
    figure('Name', 'Resultados de Simulación', 'NumberTitle', 'off');
    
    % Graficar Elim vs. Número de Eventos
    subplot(2, 1, 1);
    plot( events_values,elim_values,'--ob','LineWidth',1);
    ylabel('Elim');
    xlabel('Número de Eventos');
    title('Elim vs Número de Eventos');
    grid on;
    
    % Graficar Hmax vs. Número de Eventos
    subplot(2, 1, 2);
    plot( events_values,hmax_values,'--or','LineWidth',1);
    ylabel('Hmax');
    xlabel('Número de Eventos');
    title('Hmax vs Número de Eventos');
    grid on;

    % Actualizar los handles
    guidata(hObject, handles);



% --- Executes on button press in verResultados.
function verResultados_Callback(hObject, eventdata, handles)
% hObject    handle to verResultados (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

    % Crear un cuadro de diálogo para que el usuario elija qué ver
    choice = questdlg('¿Qué desea ver?', ...
        'Ver Resultados', ...
        'Índices de Desempeño', 'Gráficas', 'Cancelar', 'Índices de Desempeño');

    switch choice
        case 'Índices de Desempeño'
            mostrarIndicesDesempeno(handles);
        case 'Gráficas'
            mostrarGraficas(handles);
        case 'Cancelar'
            % No hacer nada
    end


% Función para mostrar los índices de desempeño
function mostrarIndicesDesempeno(handles)
    % Obtener los datos guardados
    [filename, pathname] = uigetfile('*.mat', 'Seleccione el archivo de simulación guardado');
    if isequal(filename, 0) || isequal(pathname, 0)
        return;
    end
    
    fullpath = fullfile(pathname, filename);
    load(fullpath, 'controlador');
    
    % Crear una nueva figura para mostrar los índices
    figure('Name', 'Índices de Desempeño', 'NumberTitle', 'off');
    
    % Mostrar los índices guardados
    subplot(2,1,1);
    text(0.1, 0.8, sprintf('Índices Guardados:\nIAE: %f\nISE: %f\nITSE: %f\nITAE: %f', ...
        controlador.iae, controlador.ise, controlador.itse, controlador.itae));
    axis off;
    title('Índices Guardados');
    
    % Mostrar los índices actuales
    subplot(2,1,2);
    text(0.1, 0.8, sprintf('Índices Actuales:\nIAE: %s\nISE: %s\nITSE: %s\nITAE: %s', ...
        get(handles.iae1, 'String'), get(handles.ise1, 'String'), ...
        get(handles.itse12, 'String'), get(handles.itae12, 'String')));
    axis off;
    title('Índices Actuales');

% Función para mostrar las gráficas
function mostrarGraficas(handles)
    % Obtener los datos guardados
    [filename, pathname] = uigetfile('*.mat', 'Seleccione el archivo de simulación guardado');
    if isequal(filename, 0) || isequal(pathname, 0)
        return;
    end
    
    fullpath = fullfile(pathname, filename);
    load(fullpath, 'controlador');
    
    % Crear una nueva figura para mostrar las gráficas
    fig=figure('Name', 'Comparación de Gráficas', 'NumberTitle', 'off');
    


    ax1 = subplot(3,2,[1 2]);
    ax2 = subplot(3,2,[3 4]);
    ax3 = subplot(3,2,5);
    ax4 = subplot(3,2,6);
    
    % Graficar datos guardados
    controlador.graficarResultados(ax1, ax2, ax3, ax4);

        % Cambiar el color de las líneas de los datos guardados
    children1 = get(ax1, 'Children');
    set(children1(1), 'Color', 'r', 'LineStyle', '--');  % Setpoint
    set(children1(2), 'Color', 'b');  % Salida
    children2 = get(ax2, 'Children');
    set(children2, 'Color', 'b');
    children3 = get(ax3, 'Children');
    set(children3, 'Color', 'k');
    children4 = get(ax4, 'Children');
    set(children4, 'Color', 'k');
    % Mantener los datos actuales y preparar para superponer los guardados
    hold(ax1, 'on');
    hold(ax2, 'on');
    hold(ax3, 'on');
    hold(ax4, 'on');

    % Mostrar las gráficas actuales
    subplot(3,2,[1 2]);
    copyobj(get(handles.axes1, 'Children'), gca);
   
    subplot(3,2,[3 4]);
    copyobj(get(handles.axes2, 'Children'), gca);
    
    subplot(3,2,5);
    copyobj(get(handles.axes3, 'Children'), gca);
    
    subplot(3,2,6);
    copyobj(get(handles.axes4, 'Children'), gca);


    % Ajustar leyendas
    legend(ax1, 'Setpoint', 'Salida (periodico)', 'Setpoint (Actual)', 'Salida (Actual)', 'Location', 'SouthEast');
    legend(ax2, 'Periodico', 'Actual');
    legend(ax3, 'Peridico', 'Actual');
    legend(ax4, 'Periodico', 'Actual');
    
    % Habilitar zoom y pan para todas las gráficas
    zoom(fig, 'on');
    pan(fig, 'on');
    
    % Configurar los ejes para permitir zoom independiente
    linkaxes([ax1, ax2, ax3, ax4], 'x');
    


% --- Executes on button press in zoomx.
function zoomx_Callback(hObject, eventdata, handles)
% hObject    handle to zoomx (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
zoom(gcf,'xon');


% --- Executes on button press in zoomy.
function zoomy_Callback(hObject, eventdata, handles)
% hObject    handle to zoomy (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

zoom(gcf,'yon');
% --- Executes on button press in mover.
function mover_Callback(hObject, eventdata, handles)
% hObject    handle to mover (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
pan(gcf, 'on')
