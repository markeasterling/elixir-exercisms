defmodule RNATranscription do
  @doc """
  Transcribes a character list representing DNA nucleotides to RNA

  ## Examples

  iex> RNATranscription.to_rna('ACTG')
  'UGAC'
  """
  @spec to_rna([char]) :: [char]
  def to_rna('G') do 'C' end
  def to_rna('C') do 'G' end
  def to_rna('T') do 'A' end
  def to_rna('A') do 'U' end
  def to_rna(bases) do
    Enum.map(bases, &(&1 + 1))
    # &RNATranscription.to_rna/1

  end
end
