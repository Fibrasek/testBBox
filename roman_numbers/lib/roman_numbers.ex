defmodule RomanNumbers do
  @roman %{
    1000 => "M",
    900 => "CM",
    500 => "D",
    400 => "CD",
    100 => "C",
    90 => "XC",
    50 => "L",
    40 => "XL",
    10 => "X",
    9 => "IX",
    5 => "V",
    4 => "IV",
    1 => "I"
  }

  def roman, do: @roman
  def roman_keys, do: Map.keys(roman()) |> Enum.sort(&(&1 > &2))

  @doc """

    iex> RomanNumbers.convert(149)
    "CXLIX"

  """

  @spec convert(pos_integer) :: String.t()
  def convert(number) do
    to_roman(roman_keys(), number, "")
  end

  defp to_roman(_, 0, result), do: result

  defp to_roman([max | rest] = keys, number, result) do
    if number >= max do
      to_roman(keys, number - max, result <> roman()[max])
    else
      to_roman(rest, number, result)
    end
  end
end
