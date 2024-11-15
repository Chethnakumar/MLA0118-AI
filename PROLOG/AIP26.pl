fruit_color(apple, red).
fruit_color(banana, yellow).
fruit_color(grape, purple).
fruit_color(orange, orange).
fruit_color(lemon, yellow).
fruit_color(kiwi, green).
fruit_color(strawberry, red).
fruit_color(watermelon, green).

find_fruit_by_color(Color, Fruit) :-
    fruit_color(Fruit, Color).

find_color_by_fruit(Fruit, Color) :-
    fruit_color(Fruit, Color).
