% Define what counts as a vowel
vowel(a).
vowel(e).
vowel(i).
vowel(o).
vowel(u).

% Count vowels in a list
count_vowels([], 0).  % Base case: empty list has 0 vowels
count_vowels([H|T], N) :-
    vowel(H),           % If the head is a vowel
    count_vowels(T, N1), % Recursively count vowels in the tail
    N is N1 + 1.        % Add 1 for the vowel found
count_vowels([_|T], N) :- 
    count_vowels(T, N).  % If the head is not a vowel, just continue with the tail

% Example usage:
% ?- count_vowels([a, b, e, i, o, u, x], N).
