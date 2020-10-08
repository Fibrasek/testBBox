defmodule RomanNumbersTest do
  use ExUnit.Case
  doctest RomanNumbers

  # Testa os números básicos
  test "1" do
    assert RomanNumbers.convert(1) == "I"
  end

  test "2" do
    assert RomanNumbers.convert(2) == "II"
  end

  test "3" do
    assert RomanNumbers.convert(3) == "III"
  end

  test "4" do
    assert RomanNumbers.convert(4) == "IV"
  end

  test "5" do
    assert RomanNumbers.convert(5) == "V"
  end

  test "6" do
    assert RomanNumbers.convert(6) == "VI"
  end

  test "9" do
    assert RomanNumbers.convert(9) == "IX"
  end

  # Testa a composição com 40 (XL)
  test "48" do
    assert RomanNumbers.convert(48) == "XLVIII"
  end

  # Testa a composição com 9 (IX)
  test "59" do
    assert RomanNumbers.convert(59) == "LIX"
  end

  # Testa composição com 90 (XC)
  test "93" do
    assert RomanNumbers.convert(93) == "XCIII"
  end

  # Testa composição com 400 (CD)
  test "402" do
    assert RomanNumbers.convert(402) == "CDII"
  end

  # Testa composição com 900 (CM)
  test "914" do
    assert RomanNumbers.convert(914) == "CMXIV"
  end

  test "3000" do
    assert RomanNumbers.convert(3000) == "MMM"
  end
end
