recommended_diet(diabetes, 'low sugar, high fiber, balanced carbohydrates').
recommended_diet(hypertension, 'low sodium, high potassium, DASH diet').
recommended_diet(heart_disease, 'low saturated fats, high fiber, Mediterranean diet').
recommended_diet(obesity, 'calorie-controlled, high protein, low processed foods').
recommended_diet(anemia, 'iron-rich foods, vitamin C, high protein').
recommended_diet(gastric_ulcer, 'low acid, low-fat, avoid spicy foods').

suggest_diet(Disease, Diet) :-
    recommended_diet(Disease, Diet).

is_suitable_diet(Disease, Diet) :-
    recommended_diet(Disease, Diet),
    write('Yes, this diet is suitable for '), write(Disease), nl.
is_suitable_diet(Disease, _) :-
    write('No, this diet is not suitable for '), write(Disease), nl.
