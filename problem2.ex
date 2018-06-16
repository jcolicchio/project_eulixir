# sum all even integers in the fibonacci sequence that are less than 4000000
defmodule Problem2 do
  def solve, do: solve(4000000)
  def solve(max) do
    Stream.unfold({1, 1}, 
      fn {a, b} -> cond do
        b >= max -> nil  
        rem(b, 2) == 0 -> {b, {b, a+b}}
        true -> {0, {b, a+b}}
      end
    end) |> Enum.sum
  end
end
