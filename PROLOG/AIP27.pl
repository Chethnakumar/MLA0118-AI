% Facts representing the graph with edges and heuristic values
edge(a, b, 1).
edge(a, c, 4).
edge(b, d, 2).
edge(c, d, 1).
edge(c, e, 5).
edge(d, goal, 2).
edge(e, goal, 1).

% Heuristic values for each node (estimations of distance to goal)
heuristic(a, 6).
heuristic(b, 4).
heuristic(c, 5).
heuristic(d, 2).
heuristic(e, 1).
heuristic(goal, 0).

% Best-First Search algorithm
best_first_search(Start, Goal, Path) :-
    heuristic(Start, H),
    search([[Start, H]], Goal, [], Path).

% Base case: If the current node is the goal, we return the path.
search([[Goal | Path] | _], Goal, _, ResultPath) :-
    reverse([Goal | Path], ResultPath).

% Recursive case: Expand the lowest-cost node and add its neighbors to the queue
search([[Node | Path] | Queue], Goal, Visited, ResultPath) :-
    findall([NextNode, Node | Path],
            (edge(Node, NextNode, _), 
             \+ member(NextNode, [Node | Visited])),
            NextNodes),
    add_with_heuristic(NextNodes, Queue, NewQueue),
    search(NewQueue, Goal, [Node | Visited], ResultPath).

% Helper predicate to add nodes with heuristics to the queue
add_with_heuristic([], Queue, Queue).
add_with_heuristic([[Node | Path] | Rest], Queue, NewQueue) :-
    heuristic(Node, H),
    insert_in_order([Node, H | Path], Queue, UpdatedQueue),
    add_with_heuristic(Rest, UpdatedQueue, NewQueue).

% Insert a node in the queue in order of increasing heuristic values
insert_in_order(NodePath, [], [NodePath]).
insert_in_order(NodePath, [First | Rest], [NodePath, First | Rest]) :-
    NodePath = [_, H1 | _],
    First = [_, H2 | _],
    H1 =< H2, !.
insert_in_order(NodePath, [First | Rest], [First | NewRest]) :-
    insert_in_order(NodePath, Rest, NewRest).
