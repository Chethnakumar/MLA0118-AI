can_fly(eagle).
can_fly(sparrow).
can_fly(parrot).
cannot_fly(ostrich).
cannot_fly(penguin).
cannot_fly(kiwi).

can_bird_fly(Bird) :-
    (   can_fly(Bird)
    ->  write(Bird), write(' can fly.')
    ;   cannot_fly(Bird)
    ->  write(Bird), write(' cannot fly.')
    ;   write('Unknown bird.')
    ), nl.