defmodule ListFilter do
  require Integer

  def call(list) do
    list
    |> Enum.filter(fn elem ->
      try do
        elem
        |> String.to_integer()
        |> Integer.is_odd()
      rescue
        _e in ArgumentError -> false
      end
    end)
    |> Enum.count()
  end
end
