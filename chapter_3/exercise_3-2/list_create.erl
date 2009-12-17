-module(list_create).
-author("Ryan Fitzgerald ryan.fitz@gmail.com").

-export([create/1,reverse_create/1]).

create(0) ->
		  [];
create(N) ->
		  lists:reverse(create_acc(1, N, [])).

reverse_create(0) ->
				  [];
reverse_create(N) ->
				  create_acc(1, N, []).

create_acc(N, M, List_acc) when N > M ->
			  List_acc;
create_acc(N, M, List_acc) ->
			  create_acc(N+1, M, [N | List_acc]).
	   
