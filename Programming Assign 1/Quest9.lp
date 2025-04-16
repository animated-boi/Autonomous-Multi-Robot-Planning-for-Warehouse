% N numbers in K buckets
{in_bucket(I, 1..k)} = 1 :-  I = 1..n.

% Sum-Free Rule
:- in_bucket(I, S), in_bucket(J, S), in_bucket(I+J, S), I!=J.
