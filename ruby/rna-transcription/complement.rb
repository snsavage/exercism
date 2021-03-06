class Complement

  DNA_TO_RNA = {'G' => 'C', 'C' => 'G', 'T' => 'A', 'A' => 'U'}
  RNA_TO_DNA = {'C' => 'G', 'G' => 'C', 'A' => 'T', 'U' => 'A'}

  def self.of_dna(dna)
    complement(dna, DNA_TO_RNA)
  end

  def self.of_rna(rna)
    complement(rna, RNA_TO_DNA)
  end

  private
  def self.complement(strand, translation)

    
    strand.each_char.reduce { |output = "" , strand_char|
      output << translation[strand_char] }
    

  end

end
