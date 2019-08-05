defmodule Bob do
  def hey(input) do
    cond do
      String.ends_with(input, "?") and input === String.upcase(input) ->
        "Calm down, I know what I'm doing!"

      input === String.upcase(input) ->
        "Whoa, chill out!"

      String.ends_with(input, "!") ->
        "Whatever."

      String.ends_with(input, "?") ->
        "Sure."




    end
  end
end
