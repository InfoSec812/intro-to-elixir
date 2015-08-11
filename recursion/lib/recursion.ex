defmodule Recursion do
  def sum(list, acc \\ 0)

  def sum([], acc) do
    acc
  end

  def sum([head | tail], acc) do
    sum(tail, acc + head)
  end
end
