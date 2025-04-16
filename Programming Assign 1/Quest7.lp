% 9X9 Grid Setup
row(1..9). col(1..9).

% Defining Grid Values
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

% Greater Than Rule
:- grid(R, C, V), grid(R1, C1, V1), greater(R, C, R1, C1), V<=V1.

% Given Grid
greater(1, 2, 1, 1). greater(1, 3, 1, 2). greater(1, 3, 2, 3). greater(1, 4, 1, 5). greater(1, 6, 1, 5).
greater(1, 6, 2, 6). greater(1, 7, 2, 7). greater(1, 8, 2, 8). greater(1, 9, 1, 8). greater(1, 9, 2, 9).
greater(2, 1, 1, 1). greater(2, 2, 2, 1). greater(2, 2, 2, 3). greater(2, 2, 1, 2). greater(2, 2, 3, 2).
greater(2, 3, 3, 3). greater(2, 4, 3, 4). greater(2, 5, 1, 5). greater(2, 5, 2, 4). greater(2, 5, 2, 6).
greater(2, 5, 3, 5). greater(2, 6, 3, 6). greater(2, 8, 2, 7). greater(2, 9, 2, 8). greater(2, 9, 3, 9).
greater(3, 1, 3, 2). greater(3, 4, 3, 5). greater(3, 5, 3, 6). greater(3, 7, 2, 7). greater(3, 7, 3, 8).
greater(3, 8, 2, 8). greater(4, 1, 4, 2). greater(4, 1, 5, 1). greater(4, 3, 4, 2). greater(4, 3, 5, 3).
greater(4, 6, 4, 5). greater(4, 6, 5, 6). greater(4, 7, 4, 8). greater(4, 9, 4, 8). greater(5, 2, 5, 1).
greater(5, 2, 5, 3). greater(5, 2, 4, 2). greater(5, 2, 6, 2). greater(5, 4, 4, 4). greater(5, 4, 6, 4).
greater(5, 4, 5, 5). greater(5, 5, 4, 5). greater(5, 5, 6, 5). greater(5, 6, 5, 5). greater(5, 7, 4, 7).
greater(5, 7, 5, 8). greater(5, 8, 5, 9). greater(5, 8, 4, 8). greater(5, 9, 4, 9). greater(6, 1, 5, 1).
greater(6, 2, 6, 1). greater(6, 2, 6, 3). greater(6, 5, 6, 4). greater(6, 6, 6, 5). greater(6, 6, 5, 6).
greater(6, 7, 5, 7). greater(6, 8, 6, 7). greater(6, 8, 6, 9). greater(6, 8, 5, 8). greater(6, 9, 5, 9).
greater(7, 1, 7, 2). greater(7, 1, 8, 1). greater(7, 3, 7, 2). greater(7, 3, 8, 3). greater(7, 4, 7, 5).
greater(7, 4, 8, 4). greater(7, 6, 8, 6). greater(7, 6, 7, 5). greater(7, 7, 8, 7). greater(7, 8, 7, 7).
greater(7, 8, 7, 9). greater(8, 1, 9, 1). greater(8, 1, 8, 2). greater(8, 2, 8, 3). greater(8, 2, 7, 2).
greater(8, 5, 8, 4). greater(8, 5, 8, 6). greater(8, 5, 7, 5). greater(8, 6, 9, 6). greater(8, 7, 9, 7).
greater(8, 8, 8, 7). greater(8, 8, 7, 8). greater(8, 8, 9, 8). greater(8, 9, 8, 8). greater(8, 9, 7, 9).
greater(8, 9, 9, 9). greater(9, 2, 8, 2). greater(9, 2, 9, 1). greater(9, 2, 9, 3). greater(9, 3, 8, 3).
greater(9, 4, 8, 4). greater(9, 5, 9, 4). greater(9, 5, 9, 6). greater(9, 5, 8, 5). greater(9, 8, 9, 7).
greater(9, 9, 9, 8).

#show grid/3.




