module Converter
  class Metal
    @metals_values ||= {}

    def self.get_metal_value(metal)
      @metals_values[metal]
    end

    # Calculates the metal's value
    def self.set_metal_value(galaxy_units_array: required, metal: required, credits: required)
      numeral = Galaxy.convert_to_numeral(galaxy_units_array: galaxy_units_array)
      @metals_values[metal] = credits.to_i / numeral.to_f
    end

    def self.convert_to_numeral(galaxy_units_array: required , metal: required)
      (Galaxy.convert_to_numeral(galaxy_units_array: galaxy_units_array) * get_metal_value(metal)).to_i
    end
  end
end
