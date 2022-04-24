function [out] = ltconorm(varargin)
%LTCONORM Implementa una T-conorma de la familia Lukasiewicz. Más
% exactamente, implementa la T-conorma inducida por la T-norma ltnorm y la
% negación usual.

% Usamos varargin y nargin porque la función debe poder recibir un único o 
% dos argumentos.
switch nargin 
    case 2 % Cuando tenemos dos argumentos.
        x = varargin{1};
        y = varargin{2};
        out = 1 - ltnorm((1-x), (1-y));
    
    case 1 % Un único argumento.
        x = varargin{1};
        out = 1 - ltnorm((1-x));
    
    otherwise
        error("Número de argumentos no soportado.")

end
end