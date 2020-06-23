RSpec.describe Converter::Galaxy do
  describe "#set_galaxy_unit_value" do
    set_galaxy_unit = Converter::Galaxy.set_galaxy_unit_value(galaxy_unit: 'rupa', roman_numeral: 'I')

    context "successfully" do
      it do
        set_galaxy_unit
        expect(Converter::Galaxy.get_galaxy_values('rupa')).to eq('I')
      end
    end

    context "when it does not provide the named parameters expected" do
      it { expect { Converter::Galaxy.set_galaxy_unit_value('foo') }.to raise_error(ArgumentError) }
    end
  end

  describe "#convert_to_numeral" do
    let(:set_galaxy_units) do
      Converter::Galaxy.set_galaxy_unit_value(galaxy_unit: 'rupa', roman_numeral: 'I')
      Converter::Galaxy.set_galaxy_unit_value(galaxy_unit: 'dola', roman_numeral: 'V')
    end

    context "successfully" do
      it do
        set_galaxy_units
        expect(Converter::Galaxy.convert_to_numeral(galaxy_units_array: ['rupa', 'dola'])).to be 4
      end
    end

    context "when it does not provide the named parameters expected" do
      it { expect { Converter::Galaxy.convert_to_numeral('foo') }.to raise_error(ArgumentError) }
    end
  end
end
