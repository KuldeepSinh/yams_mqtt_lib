%%%-------------------------------------------------------------------
%%% @author Kuldeep <kuldeep@ThinkErl>
%%% @copyright (C) 2016, Kuldeep
%%% @doc
%%%
%%% @end
%%% Created : 15 Apr 2016 by Kuldeep <kuldeep@ThinkErl>
%%%-------------------------------------------------------------------
-module(pre_connect_tests).
-include_lib("eunit/include/eunit.hrl").

%%%===================================================================
%%% Tests
%%%===================================================================
validate_first_byte_for_connect_test() ->
    ?assertEqual({ok, connect, <<100>>}, pre_connect:validate_first_byte(<<1:4, 0:1, 0:2, 0:1, 100:8>>)).

validate_first_byte_for_connack_test() ->
    ?assertEqual({ok, connack, <<100>>}, pre_connect:validate_first_byte(<<2:4, 0:1, 0:2, 0:1, 100:8>>)).

