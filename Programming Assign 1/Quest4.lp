% 16x16 grid setup
row(1..16). col(1..16).

% Defining grid values
val(1..16).

% Grid Generation
{box(R, C, V): val(V)}=1 :- row(R), col(C).

% Sub-Grid generation 3X3
subgrid(R, C, R4, C4) :- row(R), row(R4), col(C), col(C4), (R-1)/4 == (R4-1)/4, (C-1)/4 == (C4-1)/4.

% Uniquiness in line Rule
:- box(R, C, V), box(R4, C, V), R!=R4.

% Uniquiness in Coulmn Rule
:- box(R, C, V), box(R, C4, V), C!=C4.

% Uniquiness in Grid Rule
:- box(R, C, V), box(R4, C4, V), subgrid(R, C, R4, C4), R != R4, C != C4.

% Given Values
box(1, 1, 9). box(1, 2, 14). box(1, 6, 3). box(1, 8, 5). box(1, 9, 15). box(1, 11, 2). box(1, 15, 7).
box(1, 16, 1). box(2, 1, 6). box(2, 2, 12). box(2, 6, 14). box(2, 11, 10). box(2, 15, 5). box(2, 16, 11).
box(3, 1, 4). box(3, 4, 7). box(3, 5, 6). box(3, 8, 13). box(3, 9, 16). box(3, 12, 1).
box(3, 13, 2). box(3, 16, 9). box(4, 2, 15). box(4, 3, 16). box(4, 5, 9). box(4, 6, 7). box(4, 11, 11).
box(4, 12, 6). box(4, 14, 3). box(4, 15, 14). box(5, 2, 7). box(5, 3, 15). box(5, 14, 2). box(5, 15, 16).
box(6, 1, 5). box(6, 3, 13). box(6, 5, 14). box(6, 7, 15). box(6, 10, 10). box(6, 12, 3). box(6, 14, 1).
box(6, 16, 8). box(7, 2, 8). box(7, 4, 10). box(7, 6, 9). box(7, 7, 4). box(7, 8, 11). box(7, 9, 13).
box(7, 10, 6). box(7, 11, 15). box(7, 13, 14). box(7, 15, 3). box(8, 1, 16). box(8, 5, 5). box(8, 7, 3).
box(8, 10, 14). box(8, 12, 9). box(8, 16, 6).  box(9, 1, 15). box(9, 5, 16). box(9, 7, 10). box(9, 10, 9).
box(9, 12, 13). box(9, 16, 14). box(10, 2, 9). box(10, 4, 6). box(10, 6, 5). box(10, 7, 13). box(10, 8, 3).
box(10, 9, 1). box(10, 10, 15). box(10, 11, 4). box(10, 13, 7). box(10, 15, 12). box(11, 1, 2). box(11, 3, 8).
box(11, 5, 15). box(11, 7, 14). box(11, 10, 16). box(11, 12, 12). box(11, 14, 5). box(11, 16, 13).
box(12, 2, 13). box(12, 3, 12). box(12, 14, 9). box(12, 15, 11). box(13, 2, 5). box(13, 3, 3). box(13, 5, 2).
box(13, 6, 16). box(13, 11, 13). box(13, 12, 10). box(13, 14, 12). box(13, 15, 9). box(14, 1, 8).
box(14, 4, 4). box(14, 5, 12). box(14, 8, 1). box(14, 9, 6). box(14, 12, 7). box(14, 13, 15).
box(14, 16, 3). box(15, 1, 10). box(15, 2, 1). box(15, 6, 15). box(15, 11, 16). box(15, 15, 6). box(15, 16, 2).
box(16, 1, 11). box(16, 2, 2). box(16, 6, 8). box(16, 8, 14). box(16, 9, 3). box(16, 11, 1). box(16, 15, 10).
box(16, 16, 7).

#show box/3.
