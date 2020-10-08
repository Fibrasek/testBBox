defmodule RnaTranscription do
  @dna_rna_map %{
    ?G => ?C,
    ?C => ?G,
    ?T => ?A,
    ?A => ?U,
  }

  @doc """

    iex> RnaTranscription.to_rna('ACTG')
    'UGAC'

  """

  def to_rna(dna) do
    Enum.map(dna, &Map.get(@dna_rna_map, &1))
  end
end
