classdef Validador
    methods(Static)
        function vec = validarVector(valor, nombre)
            if ischar(valor)
                valor = str2num(valor);
            end
            if ~isnumeric(valor) || isempty(valor) || ~isvector(valor)
                error('Validador:vectorInvalido', '%s debe ser un vector numérico válido', nombre);
            end
            vec = valor;
        end
        
        function val = validarEscalarPositivo(valor, nombre)
            val = Validador.convertirANumero(valor, nombre);
            if ~isnumeric(val) || isempty(val) ||  ~isscalar(val) || val < 0
                error('Validador:escalarPositivoInvalido', '%s debe ser un número positivo', nombre);
            end
        end
        
        function val = validarEscalar(valor, nombre)
            val = Validador.convertirANumero(valor, nombre);
            if ~isnumeric(val) || isempty(val) || ~isscalar(val)
                error('Validador:escalarInvalido', '%s debe ser un número válido', nombre);
            end
        end
        
        function val = validarEnteroPositivo(valor, nombre)
            val = Validador.convertirANumero(valor, nombre);
            if ~isscalar(val) || val <= 0 || val ~= round(val)
                error('Validador:enteroPositivoInvalido', '%s debe ser un entero positivo', nombre);
            end
        end
        
        function val = validarNumerico(valor, nombre)
            val = Validador.convertirANumero(valor, nombre);
        end
        
        function val = convertirANumero(valor, nombre)
            if ischar(valor)
                val = str2double(valor);
                if isnan(val)
                    error('Validador:noNumerico', '%s debe ser un valor numérico', nombre);
                end
            elseif ~isnumeric(valor)
                error('Validador:noNumerico', '%s debe ser un valor numérico', nombre);
            else
                val = valor;
            end
        end
    end
end