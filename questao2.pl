0.6::r.         
0.4::\+r.       
0.1::flw.       
0.9::\+flw.     
0.95::b.        
0.05::\+b.     
0.98::k.       
0.02::\+k.     

% Definindo o valor de Str como "snow_covered"
str(snow_covered).

% Probabilidades condicionais para P(V | R, Str, Flw) - Dependência de Str
% Caso Str = snow_covered

0.4::v :- r, str(snow_covered), flw.      
0.2::v :- r, str(snow_covered), \+flw.     
0.01::v :- \+r, str(snow_covered), flw.    
0.005::v :- \+r, str(snow_covered), \+flw. 

% Evidência
evidence(str(snow_covered)).

% Consulta
query(v).
