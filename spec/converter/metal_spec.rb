RSpec.describe Converter::Metal do

  before do |test|
    Converter::Galaxy.set_galaxy_unit_value(galaxy_unit: 'rupa', roman_numeral: 'I')
    Converter::Galaxy.set_galaxy_unit_value(galaxy_unit: 'dola', roman_numeral: 'V')
    Converter::Galaxy.set_galaxy_unit_value(galaxy_unit: 'eura', roman_numeral: 'X')
  end

  describe "#set_metal_value" do

    subject (:set_metal_value) { Converter::Metal.set_metal_value(galaxy_units_array: ['rupa', 'dola'], metal: 'Gold', credits: 57800) }

    context "given three parameters :galaxy_units_array, :metal and :credits " do
      it do
        set_metal_value
        metal_value = 57800 / Converter::Galaxy.convert_to_numeral(galaxy_units_array: ['rupa', 'dola']).to_f
        expect(Converter::Metal.get_metal_value('Gold')).to eq(metal_value)
      end
    end

    context "when it does not provide the named parameters expected" do
      it { expect { Converter::Metal.set_metal_value('foo') }.to raise_error(ArgumentError) }
    end

  end

  describe "#convert_to_numeral" do

    let(:set_metal_value) { Converter::Metal.set_metal_value(galaxy_units_array: ['eura', 'eura'], metal: 'Iron', credits: 3910) }

    context "given two parameters :galaxy_units_array and :metal'" do
      it do
        set_metal_value
        expect(Converter::Metal.convert_to_numeral(galaxy_units_array: ['rupa', 'dola'], metal: 'Iron')).to be 782
      end
    end

    context "when it does not provide the named parameters expected" do
      it { expect { Converter::Metal.convert_to_numeral('foo') }.to raise_error(ArgumentError) }
    end

  end


end
