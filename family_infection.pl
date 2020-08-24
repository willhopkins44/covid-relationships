% Will
brother_of(will,sam). % Will is the brother of Sam
son_of(will,doug).
son_of(will,julie).
friend_of(will,shannon).

% Sam
brother_of(sam,will).
son_of(sam,doug).
son_of(sam,julie).

% Doug
father_of(doug,will).
father_of(doug,sam).
husband_of(doug,julie).

% Julie
mother_of(julie,will).
mother_of(julie,sam).
wife_of(julie,doug).

% Shannon
friend_of(shannon,will).
has_covid(shannon).

% Use atoms for facts (lowercase) and variables for rules (uppercase)

% Relationship rules
parent_of(Person1,Person2) :- father_of(Person1,Person2);mother_of(Person1,Person2).
child_of(Person1,Person2) :- son_of(Person1,Person2).
spouse_of(Person1,Person2) :- husband_of(Person1,Person2);wife_of(Person1,Person2).

in_family(Person1,Person2) :- parent_of(Person1,Person2);spouse_of(Person1,Person2);child_of(Person1,Person2);brother_of(Person1,Person2).
relationship_with(Person1,Person2) :- in_family(Person1,Person2);friend_of(Person1,Person2).

% At risk of Covid-19
at_risk(Person) :- relationship_with(X, Person), has_covid(X).