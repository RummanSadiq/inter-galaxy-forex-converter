Dir[File.join(__dir__, 'converter', '**/*.rb')].each {|file| require file }

module Calculator
  module_function

  def read_input_file(file_name)
    File.read(file_name).each_line { |line| process_line line }
  end
end
