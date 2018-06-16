# sum all integers between 1 and 999 which are divisible by 3 or 5
defmodule Problem1 do
  def solve, do: solve(1000)
  def solve(x) do
    1..(x-1)
    |> Enum.filter(&divisible_by_3_or_5/1)
    |> Enum.sum
  end

  defp divisible_by_3_or_5(x), do: rem(x, 3) == 0 or rem(x, 5) == 0
end
