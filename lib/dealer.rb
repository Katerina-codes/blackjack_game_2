class Dealer

	def initialize(output = $stdout, input = $stdin)
		@output = output
		@input = input
	end

	def ask_hit_or_stop
		@output.puts "Do you want to hit or stop?"
	end

	def get_hit_or_stop
		@input.gets
	end

end
