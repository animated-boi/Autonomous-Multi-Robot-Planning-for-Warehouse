% 9X9 Grid Setup
row(1..9). col(1..9).

% Defining Values 
val(1..9).

% Generation of Grid
{grid(R, C, V): val(V)}=1 :- row(R), col(C).

% Generation of 3X3 Sub-Grid
subgrid(R, C, R3, C3) :- row(R), row(R3), col(C), col(C3), (R-1)/3 == (R3-1)/3, (C-1)/3 == (C3-1)/3.

% Uniquiness in Line Rule
:- grid(R, C, V), grid(R3, C, V), R!=R3.

% Uniquiness in Column Rule
:- grid(R, C, V), grid(R, C3, V), C!=C3.

% Uniquiness in Sub-Grid Rule
:- grid(R, C, V), grid(R3, C3, V), subgrid(R, C, R3, C3), R != R3, C != C3.

% Anti-Knight Moves
:- grid(R, C, V), grid(R-2, C-1, V). 
:- grid(R, C, V), grid(R-2, C+1, V). 
:- grid(R, C, V), grid(R-1, C-2, V).
:- grid(R, C, V), grid(R-1, C+2, V). 
:- grid(R, C, V), grid(R+1, C-2, V). 
:- grid(R, C, V), grid(R+1, C+2, V). 
:- grid(R, C, V), grid(R+2, C-1, V). 
:- grid(R, C, V), grid(R+2, C+1, V).

% Given Values
grid(1, 1, 3). grid(1, 9, 4). grid(2, 4, 6). grid(2, 6, 9). grid(3, 3, 6). grid(3, 7, 9).
grid(4, 2, 8). grid(4, 4, 3). grid(4, 6, 2). grid(4, 8, 6). grid(5, 5, 7). grid(6, 2, 1). grid(6, 4, 8). grid(6, 6, 5). grid(6, 8, 7). grid(7, 3, 7). grid(7, 7, 8). grid(8, 4, 7). grid(8, 6, 8). grid(9, 1, 9). grid(9, 9, 7).

#show grid/3.

