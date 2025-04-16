% steup of 9*9 
row(1..9). col(1..9).

% filling one to nine values in the grid
val(1..9).

% grid generation
{grid(Row, Col, Val): val(Val)}=1 :- row(Row), col(Col).

% 3*3 subgrids generations
subgrid(Row, Col, Row3, Col3) :- row(Row), row(Row3), col(Col), col(Col3),(Row-1)/3 == (Row3-1)/3, (Col-1)/3 == (Col3-1)/3.

% for uniqueness
:- grid(Row, Col, Val), grid(Row3, Col, Val), Row!=Row3.

% uniqueness in the columnn
:- grid(Row, Col, Val), grid(Row, Col3, Val), Col!=Col3.

% uniqueness in subgrid
:- grid(Row, Col, Val), grid(Row3, Col3, Val), subgrid(Row, Col, Row3, Col3), Row != Row3, Col != Col3.

% defined grid_positionns
grid(1, 1, 8). grid(2, 3, 3). grid(2, 4, 6). grid(3, 2, 7). grid(3, 5, 9). grid(3, 7, 2).
grid(4, 2, 5). grid(4, 6, 7). grid(5, 5, 4). grid(5, 6, 5). grid(5, 7, 7). grid(6, 4, 1). grid(6, 8, 3).
grid(7, 3, 1). grid(7, 8, 6). grid(7, 9, 8). grid(8, 3, 8). grid(8, 4, 5). grid(8, 8, 1). grid(9, 2, 9). grid(9, 7, 4).

#show grid/3.
