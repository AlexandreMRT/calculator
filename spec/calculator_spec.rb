require 'calculator'

describe Calculator do
  let(:params) { {} }
  subject { described_class.new(params) }

  it "use sum method for two numbers" do
    result = subject.sum(3, 3)
    expect(result).to eq(6)  
  end

  context "#bhaskara" do
    let(:params) {{ a: 2, b: 12, c: -14 }} 

    it "#delta" do
      result = subject.delta
      expect(result).to eq(256)  
    end

    it "positive_value" do
      result = subject.bhaskara(:positive)
      expect(result).to eq(1)
    end

    it "positive_value" do
      result = subject.bhaskara(:negative)
      expect(result).to eq(-7)
    end
  end
end