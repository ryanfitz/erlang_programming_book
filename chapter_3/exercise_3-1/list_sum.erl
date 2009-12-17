-module(list_sum).
-author("Ryan Fitzgerald ryan.fitz@gmail.com").

-export([sum/1,sum/2]).

sum(N) when N > 0 ->
	   sum(1, N).

sum(N, M) when N =< M ->
	   sum_acc(N, M, 0).

sum_acc(N, M, Acc) when N > M ->
		   Acc;
sum_acc(N, M, Acc) ->
		   sum_acc(N+1, M, N + Acc).
	   
