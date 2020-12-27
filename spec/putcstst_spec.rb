RSpec.describe Putcstst do
  it "has a version number" do
    expect(Putcstst::VERSION).not_to be nil
  end

  describe "csvprinter_class" do
    before :all do
      @tested_class = Putcstst::CSVPrinter.new("spec/testfile.csv")
    end
    
    it "can read test csv" do
      # The print method returns the sum of last line.
      expect(@tested_class.print).to eq(28)
    end
  end
end
