```elixir
# /test/test_helper.exs
ExUnit.start()
```
```elixir
# /test/db_test.exs
defmodule DBTest do
  use ExUnit.Case
  doctest DB

  test "greets the world" do
    assert DB.hello() == :world
  end
end
```
