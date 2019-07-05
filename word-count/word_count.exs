defmodule Words do
  @doc """
  Count the number of words in the sentence.

  Words are compared case-insensitively.
  """
  # split string, for each of the list items, put an entry in a
  # map with the number of times it shows up
  @spec count(String.t()) :: map
  def count(sentence) do
    sentence
    |> String.split(" ")
    |>
  end
end
