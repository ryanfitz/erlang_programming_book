-module(accumulator).

-export([average/1]).

average(List) ->
			  avg_acc(List, 0, 0).

avg_acc([], Sum, Length) when Length /= 0 ->
			Sum / Length;
avg_acc([], _, _) ->
			0;
avg_acc([H | T], Sum, Length) ->
		   avg_acc(T, Sum + H, Length +1).
