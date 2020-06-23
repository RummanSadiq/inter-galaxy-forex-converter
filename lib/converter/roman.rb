module Converter
  class Roman
    attr_reader :roman_map

    @@roman_map = [
      ["M",1000],
      ["CM",900],
      ["D",500],
      ["CD",400],
      ["C",100],
      ["XC",90],
      ["L",50],
      ["XL",40],
      ["X",10],
      ["IX",9],
      ["V",5],
      ["IV",4],
      ["I",1]
    ]

    def self.convert_to_numeral(roman: required)
      total_sum = 0
      for key, value in @@roman_map
        while roman.index(key) == 0
          total_sum += value
          roman.slice!(key)
        end
      end
      total_sum
    end
  end
end
