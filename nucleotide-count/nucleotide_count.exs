defmodule NucleotideCount do
  @nucleotides [?A, ?C, ?G, ?T]
  
  def count([], _), do: 0

  @spec count([char], char) :: non_neg_integer
  def count([head|tail], nucleotide) do
    case head == nucleotide do
      true -> 1+count(tail, nucleotide)
      false -> count(tail, nucleotide)
    end
  end

  @spec histogram([char]) :: map
  def histogram(strand) do
    %{?A => count(strand, ?A), 
      ?T => count(strand, ?T), 
      ?C => count(strand, ?C), 
      ?G => count(strand, ?G)}
  end
end
