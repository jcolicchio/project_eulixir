# return the largest prime divisor of the input integer
defmodule Problem3 do
  def solve, do: solve(600851475143)
  def solve(value), do: remove_divisors(value)

  def remove_divisors(value), do: remove_divisors(value, 2)
  def remove_divisors(value, lowest) when lowest*lowest > value, do: value
  def remove_divisors(value, lowest) when rem(value, lowest) == 0, do: remove_divisors(div(value, lowest), lowest)
  # optimization to skip even divisors greater than 2
  def remove_divisors(value, 2), do: remove_divisors(value, 3)
  def remove_divisors(value, lowest), do: remove_divisors(value, lowest+2)
end
