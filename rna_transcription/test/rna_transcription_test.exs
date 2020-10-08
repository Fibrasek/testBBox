defmodule RnaTranscriptionTest do
  use ExUnit.Case
  doctest RnaTranscription

  # test "Guanina => Citosina" do
  #   assert RnaTranscription.to_rna('G') == 'C'
  # end

  # test "Citosina => Guanina" do
  #   assert RnaTranscription.to_rna('C') == 'G'
  # end

  # test "Timina => Adenina" do
  #   assert RnaTranscription.to_rna('T') == 'A'
  # end

  # test "Adenina => Uracila" do
  #   assert RnaTranscription.to_rna('A') == 'U'
  # end

  test "Traduz DNA para seu equivalent em RNA" do
    assert RnaTranscription.to_rna('TATACCGT') == 'AUAUGGCA'
  end
end
