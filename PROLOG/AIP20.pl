planet('Mercury', 57.9, 4879).
planet('Venus', 108.2, 12104).
planet('Earth', 149.6, 12742).
planet('Mars', 227.9, 6779).
planet('Jupiter', 778.3, 139820).
planet('Saturn', 1427, 116460).
planet('Uranus', 2871, 50724).
planet('Neptune', 4495, 49244).

get_planet_info(Name, Distance, Diameter) :-
    planet(Name, Distance, Diameter).
