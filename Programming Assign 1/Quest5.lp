% 9X9 grid setup
row(1..9). col(1..9).

% Defining values 
val(1..9).

% Generation of Grid
{grid(R, C, V): val(V)}=1 :- row(R), col(C).

% Generation of 3X3 Sub-Grid
subgrid(R, C, R3, C3) :- row(R), row(R3), col(C), col(C3), (R-1)/3 == (R3-1)/3, (C-1)/3 == (C3-1)/3.

% Uniqueness in Line Rule
:- grid(R, C, V), grid(R3, C, V), R!=R3.

% Uniqueness in Column Rule
:- grid(R, C, V), grid(R, C3, V), C!=C3.

% Uniqueness in Sub-Grid Rule
:- grid(R, C, V), grid(R3, C3, V), subgrid(R, C, R3, C3), R!=R3, C!=C3.

% Uniqueness in Color Rule
:- grid(R, C, V), grid(R1, C1, V), R\3 == R1\3, C\3 == C1\3, R!=R1, C!=C1.

% Given Values
grid(1, 3, 7). grid(1, 7, 8). grid(2, 2, 2).
grid(2, 8, 4). grid(3, 1, 8). grid(3, 3, 4). 
grid(3, 5, 2). grid(3, 7, 5). grid(3, 9, 1). 
grid(4, 5, 7). grid(5, 3, 8). grid(5, 4, 3). 
grid(5, 5, 6). grid(5, 6, 4). grid(5, 7, 2). 
grid(6, 5, 9). grid(7, 1, 3). grid(7, 3, 2). 
grid(7, 5, 8). grid(7, 7, 7). grid(7, 9, 4). 
grid(8, 2, 7). grid(8, 8, 8). grid(9, 3, 6). grid(9, 7, 9).

#show grid/3.



