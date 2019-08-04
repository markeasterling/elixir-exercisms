defmodule Words do
  @doc """
  Count the number of words in the sentence.

  Words are compared case-insensitively.
  """
  @spec count(String.t()) :: map
  def count(sentence) do
    String.downcase(sentence)
    |> String.replace(~r{[!@#$%^&*:;+=<>,.?/]}, "")
    |> String.replace("_", " ")
    |> String.split()
    |> getCount(%{})
  end

  def getCount([], map) do map end
  def getCount([ head | tail ], map) do
    getCount(tail, Map.update(map, head, 1, &(&1 + 1)))
  end
end
# map with keys that are from members of list, with a value of 1
# Enum.reduce(sentence, %{}, fn(word, acc) -> Map.put acc, word, 1 end)

# Enum.map(list, &(for x <- list, do: [&1,x]))
# Enum.map(catListTwo, &(for x <- catListTwo, do: [Map.keys(&1),x] ))
