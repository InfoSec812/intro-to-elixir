defmodule PrizePicker do

  @moduledoc """
  Picks the winners for our giveaway.

  ## Examples

  iex> PrizePicker.get_numbers(n, count)
    [1, 2, 9]
  """
  def get_numbers(n, count)  do
    :random.seed(:os.timestamp)
    Enum.to_list(1..n)
    |> Enum.shuffle
    |> Enum.take(count)
  end
end
