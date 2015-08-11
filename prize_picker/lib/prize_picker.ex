defmodule PrizePicker do

  @doc """
  Picks the winners for our giveaway.

  ## Examples

  iex> PrizePicker.get_numbers(n, count)
    [1, 2, 9]

  ## ?\f converts to Integer
  """
  def get_numbers(n, count)  do
    :random.seed(:os.timestamp)
    Enum.to_list(1..n)
    |> Enum.shuffle
    |> Enum.take(count)
  end
end
