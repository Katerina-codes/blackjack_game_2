class Dealer

	def initialize(output = $stdout)
		@output = output
	end

	def hit_or_stop
		@output.puts "Do you want to hit or stop?"
	end

end
