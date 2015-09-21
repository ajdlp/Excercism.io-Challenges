class Hamming
	VERSION = 1
	def self.compute(model_strand, comparison_strand)
		raise ArgumentError.new("Strands must be of equal length") if model_strand.length != comparison_strand.length 
		min_length = [model_strand.length, comparison_strand.length].min
		difference = 0
		(0..min_length - 1).each do |i|
			difference += 1 unless model_strand[i] == comparison_strand[i]
		end
		difference
	end
end