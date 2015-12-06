-module(fling_app).
-behaviour(application).

-export([
	 start/2,
	 stop/1
	]).

start(_App, _Type) ->
    application:ensure_all_started(fling),
    fling_sup:start_link().

stop(_) -> ok.
