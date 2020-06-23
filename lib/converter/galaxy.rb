module Converter
  class Galaxy
    @galaxy_units_values ||= {}

    def self.get_galaxy_values(galaxy_unit)
      @galaxy_units_values[galaxy_unit]
    end

    def self.set_galaxy_unit_value(galaxy_unit: required, roman_numeral: required)
      @galaxy_units_values[galaxy_unit] = roman_numeral
    end

    def self.convert_to_numeral(galaxy_units_array: required)
      # First converts galaxy units array to a roman string
      roman_string = ""
      galaxy_units_array.each do |galaxy_unit|
        roman_string << get_galaxy_values(galaxy_unit)
      end
      # Then converts the roman string to numeral
      Roman.convert_to_numeral(roman: roman_string)
    end
  end
end
