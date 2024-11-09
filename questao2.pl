% Probabilidades marginais
0.6::r.         % P(R = true)
0.4::\+r.       % P(R = false)
0.1::flw.       % P(Flw = true)
0.9::\+flw.     % P(Flw = false)
0.95::b.        % P(B = true)
0.05::\+b.      % P(B = false)
0.98::k.        % P(K = true)
0.02::\+k.      % P(K = false)

% Definindo o valor de Str como "snow_covered"
str(snow_covered).

% Probabilidades condicionais para P(V | R, Str, Flw) - Dependência de Str
% Caso Str = snow_covered

0.4::v :- r, str(snow_covered), flw.       % P(V = true | R = true, Str = snow_covered, Flw = true)
0.2::v :- r, str(snow_covered), \+flw.     % P(V = true | R = true, Str = snow_covered, Flw = false)
0.01::v :- \+r, str(snow_covered), flw.    % P(V = true | R = false, Str = snow_covered, Flw = true)
0.005::v :- \+r, str(snow_covered), \+flw. % P(V = true | R = false, Str = snow_covered, Flw = false)

% Evidência
evidence(str(snow_covered)).

% Consulta
query(v).
