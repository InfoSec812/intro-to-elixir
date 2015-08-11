defmodule EnumsStreams do

  def odd?(n) do
    (rem(n, 2) != 0)   
  end

  def enum_sum do
    1..100_000
    |> Enum.map(&(&1 * 3))
    |> Enum.filter(&odd?/1)
    |> Enum.sum
  end

  def stream_sum do
    1..100_000
    |> Stream.map(&(&1 * 3))
    |> Stream.filter(&odd?/1)
    |> Enum.sum
  end

  def streams do
    1..100_000 |> Stream.map(&(&1 * 3)) 
  end

  def enums do
    1..100_000 |> Enum.map(&(&1 * 3))
  end
end
