# Una familia de T-normas de tipo Lucasiewicz
Implementación de una familia de T-normas de Lucasiewicz en MATLAB. 

La función ```ltnorm``` es una T-norma de Lucasiewicz inducida por el automorfismo $f(x) = x^p$ con $x\in[0, 1]$ y $p>0$. Por otra parte, si $n(x) = 1-x$, es la función de negación usual, la función ```ltconorm``` es la T-conorma inducida por ```ltnorm``` y $n(x)$.

Forma de uso: 
1. Descargue las funciones ```ltnorm``` y ```ltconorm``` en el *path* de MATLAB.
2. Abra el código de la T-norma, ```ltnorm```, y establezca el valor del parámetro *p* al número mayor estrictamente de cero, que desee.

Para más información sobre la implementación de funciones lógicas definidas por el usuario, consulte la guía de referencia del *Fuzzy Logic Toolbox* de MATLAB, más específicamente, en la página 2-46, de la sección *Specify Custom Inference Functions*.
