room(tent,'tent','You awaken at your tent ready to go for a nice walk!').
room(bridge,'bridge','You come across a bridge and notice an empty anchored boat next to a fish trap. Interesting...').
room(crossroads,'crossroads','You reach a cross roads and look around to notice you are hopelessly lost, better keep moving...').
room(witch,'witch','You choose left and stumbled across a crying witch all alone...').
room(maze,'maze','You choose right and have come across a huge maze, should you enter?').
room(center, 'center', 'You reached the mazes center and see a throne and a witch in a cage...').
connected(forward, tent, bridge).
connected(back, bridge, tent).
connected(forward, bridge, crossroads).
connected(back, crossroads, bridge).
connected(right, crossroads, maze).
connected(back, maze, crossroads).
connected(left, crossroads, witch).
connected(back, witch, crossroads).
connected(forward, maze, center).

print_location(Current):-
	room(Current, Name, Description),
	print(Name), nl, print(Description), nl.

start(Current):-
    print_location(Current).


move(Current, Direction):-
    connected(Direction, Current, Newroom),
    print_location(Newroom).
