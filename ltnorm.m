function [out] = ltnorm(varargin)
%LTNORM Implementa una T-norma de la familia Lukasiewicz. El automorfismo
% de [0,1] es phi = x ^ p.

p = 2; % Caracteriza el automorfismo.

% Usamos varargin y nargin porque la función debe poder recibir un único o 
% dos argumentos.
switch nargin 
    case 2 % Cuando tenemos dos argumentos.
        x = varargin{1};
        y = varargin{2};
        out = (max(x.^p + y^p-1, zeros(size(x)))) .^ (1/p);
    
    case 1 % Un único argumento.
        x = varargin{1};
        s = size(x);
        if length(s) < 3
            out = ones(1,s(2)); % Debemos hacer el cálculo por columnas.
            for i = 1:s(2)
                for k = 1:s(1)
                    out(i) = ltnorm(out(i),x(k,i)); % Rellenamos la salida.
                end
            end
        else % El caso multidimensional debe estar implementado. Se deja
            % como un trabajo futuro.
            error("Esta función no está preparada para tratar " + ...
                "matrices N-dimeensionales")
        end
    
    otherwise
        error("Número de argumentos no soportado.")

end
end