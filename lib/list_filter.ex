defmodule ListFilter do

  require Integer

    def filter(list), do: count_number_odd(list)

    defp count_number_odd([]), do: 0

    defp count_number_odd(list) do
      list
        |>Enum.map(&Integer.parse(&1)) 
        |>Enum.filter(&is_tuple(&1))
        |>Enum.map(&elem(&1,0))
        |>Enum.filter(&Integer.is_odd(&1))
        |>Enum.count()
    end
end
