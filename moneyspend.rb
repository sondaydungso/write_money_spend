require 'date'
class Date
	attr_accessor :today, :current_time
	def initialize
		@today = today
		@current_time = current_time
	end
end

def write_file(file)
	# Open a file in write mode (this will create the file if it doesn't exist)

file = File.open(file, "w")

# Ask the user for input and write it to the file
puts "Money (type 'exit' to finish):"
input = gets.chomp

while input != 'exit'
  file.puts(Date.today.to_s + ":" + input +"$")
  input = gets.chomp
end

file.close

end
def read_file(file)	
end

def main()
	file = "tuban.txt"
	write_file(file)
end
main()