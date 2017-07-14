%%%-------------------------------------------------------------------
%% @doc grpc_lib public API
%% @end
%%%-------------------------------------------------------------------

-module(grpc_lib_app).

-behaviour(application).

%% Application callbacks
-export([start/2, stop/1]).

%%====================================================================
%% API
%%====================================================================

start(_StartType, _StartArgs) ->
    grpc_lib_sup:start_link().

%%--------------------------------------------------------------------
stop(_State) ->
    ok.

%%====================================================================
%% Internal functions
%%====================================================================
