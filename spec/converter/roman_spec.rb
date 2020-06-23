RSpec.describe Converter::Roman do
  describe "Can convert roman currency to numeral" do
    roman = 'MCMXCIX'

    it 'returns a successful response (i.e. convert to 1999)' do
      expect(Converter::Roman.convert_to_numeral(roman: roman)).to be 1999
    end

    it "it does not provide the named parameters expected" do
      expect {
        Converter::Roman.convert_to_numeral('alpha')
      }.to raise_error(ArgumentError)
    end

  end
end
