```elixir
# /lib/db/application.ex
defmodule DB.Application do
  use Application
  require Logger

  def start(type, args) do
    Logger.info(inspect({type, args}))
    children = []
    opts = [strategy: :one_for_one, name: __MODULE__]
    Supervisor.start_link(children, opts)
  end
end
```
