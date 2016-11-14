% Appending two difference lists
% app(L1,T1,L2,T2,L3,T3) :- T1 = L2, L3 = L1, T3 = T2.
% append(L3,T1,T1,T3,L3,T3).
appendD(A-B,B-C,A-C).

% Get the length of a difference list
lenD(A-A1,0) :- unify_with_occurs_check(A,A1).
lenD([_|T]-T1,N) :- lenD(T-T1,M),N is M+1.
