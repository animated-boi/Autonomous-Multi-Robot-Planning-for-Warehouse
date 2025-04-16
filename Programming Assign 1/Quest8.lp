% Maximum bishops
% Positions possible for bishop
{ bishop(R, 1..n) } :- R=1..n .

% No bishops on Diagonal Rule
:- bishop(R1, C1), bishop(R2, C2), R1!=R2, |R1 - R2| = |C1 - C2|.

% Maximizing number of bishops 
#maximize{ 1, X, Y : bishop(X, Y)}.
