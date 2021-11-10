defmodule ListFilter do
  def filter(list), do: countNumberOdd(list)

  defp countNumberOdd([]), do: 0

  defp countNumberOdd(list) do
    list
    |> Enum.map(fn x -> Integer.parse(x) end)
    |> Enum.filter(fn x -> is_tuple(x) end)
    |> Enum.map(fn x -> elem(x, 0) end)
    |> Enum.filter(fn x -> rem(x, 2) != 0 end)
    |> length()
  end
end
