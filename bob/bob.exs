defmodule Bob do
  def hey(input) do
    cond do
      is_empty?(input) -> "Fine. Be that way!"
      is_a_question?(input) and is_shouting?(input) -> "Calm down, I know what I'm doing!"
      is_a_question?(input) -> "Sure."
      is_shouting?(input) -> "Whoa, chill out!"
      true -> "Whatever."
    end
  end

  defp is_a_question?(input), do: String.ends_with?(input, "?")

  defp is_shouting?(input), do: String.upcase(input) == input and String.downcase(input) != input

  defp is_empty?(input), do: String.trim(input) == ""
end
