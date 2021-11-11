defmodule ListFilter do

  require Integer

    def filter(list), do: count_number_odd(list)

    defp count_number_odd([]), do: 0

    defp count_number_odd(list) do
      list
        |>Enum.map(fn x -> Integer.parse(x) end) 
        |>Enum.filter(fn x -> is_tuple(x) end)
        |>Enum.map(fn x -> elem(x,0) end)
        |>Enum.filter(fn x -> Integer.is_odd(x) end)
        |>Enum.count()
    end
end
