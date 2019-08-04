defmodule RNATranscription do
  @doc """
  Transcribes a character list representing DNA nucleotides to RNA

  ## Examples

  iex> RNATranscription.to_rna('ACTG')
  'UGAC'
  """
  @spec to_rna([char]) :: [char]
  def to_rna(bases) do
    Enum.map(bases, &transcribe/1)
  end
  def transcribe ?G do ?C end
  def transcribe ?C do ?G end
  def transcribe ?T do ?A end
  def transcribe ?A do ?U end
end
