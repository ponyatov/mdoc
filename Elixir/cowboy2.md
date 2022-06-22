# [[cowboy]] v.2

- [Покоряем Elixir (Cowboy, Erlang VM)](https://www.youtube.com/watch?v=RpY5oyrYRdU)
- **https://www.bortzmeyer.org/cowboy-elixir.html**

# [[Web server using Cowboy without Plug]]

Among the people who use the [[cowboy]] [[HTTP/server]], some do it from an [[Erlang]] program, and some from an [[Elixir]] program. The [official documentation](https://ninenines.eu/docs/en/cowboy/2.6/guide/) only cares about Erlang. You can find some hints online about how to use cowbow from Elixir but they are often outdated (cowbow changed a lot), or assume that you use cowbow with a library like [[plug]] or a framework like [[Phoenix]]. Therefore, I document here how I use plain CowBoy, from Elixir programs, because it may help. This is with [[Elixir/1.9.1]] and [[cowbow]] 2.6.3. 

I do not find a way to run cowbow without the mix tool. So, I start with mix:

```elixir
  defp deps do
    [
      {:cowboy, "~> 2.9"}
    ]
  end
```
```
mix deps.get
```
- [[cowboy#cowboy2]] 2.9.0
- [[cowlib]] 2.11.0
- [[ranch]] 1.8.0

```elixir
# /lib/DB.ex

defmodule DB do

  def start() do
    {:ok, _} =
      :cowboy.start_clear(
        :http,
        [{:port, 12345}],
        %{env: %{dispatch: dispatch_config()}}
      )
  end

  defp dispatch_config() do
    :cowboy_router.compile([
      {:_,
       [
         {"/", :cowboy_static, {:file, "mix.exs"}}
       ]}
    ])
  end
end
```

And that's all. Let's test it:

```
$ iex -S mix
iex(1)> DB.start
{:ok, #PID<0.224.0>}
iex(2)> _
```

You can now use any [[HTTP/client]] such as curl, lynx or another browser, to visit http://localhost:12345/.

