Dir[File.join(__dir__, 'converter', '**/*.rb')].each {|file| require file }

module Calculator
  module_function

  def process_statement(statement)
    case statement
    when /^([a-z]+) is ([I|V|X|L|C|D|M])$/
      Galaxy.set_galaxy_unit_value(galaxy_unit: $1, roman_numeral: $2)
    when /^([a-z ]+)([A-Z]\w+) is (\d+) Credits$/
      Metal.set_metal_value(galaxy_units_array: $1.split, metal: $2, credits: $3)
    when /^how much is ((\w+ )+)\?$/
      result = Galaxy.convert_to_numeral(galaxy_units_array: $1.split)
      puts "#{$1}is #{result} Credits"
    when /^how many Credits is ([a-z ]+)([A-Z]\w+) \?$/
      result = Metal.convert_to_numeral(galaxy_units_array: $1.split, metal: $2)
      puts "#{$1}#{$2} is #{result} Credits"
    else
      puts "I'm unable to process this!"
    end
  end

  def read_input_file(file_name)
    File.read(file_name).each_line { |statement| process_statement statement }
  end
end
