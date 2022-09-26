require "./lib/factorial_sum"

describe "#factorial_sum" do
  context "passing positive numbers as number parameter" do
    it "should return 220 when passing 10 as an argument" do
      expect(factorial_sum(10)).to eq(220)
    end

    it "should return 1540 when passing 20 as an argument" do
      expect(factorial_sum(20)).to eq(1540)
    end

    it "should return 0 when passing 0 as an argument" do
      expect(factorial_sum(0)).to eq(0)
    end
  end

  context "passing negative numbers as number parameter" do
    it "should raise ArgumentError exception" do
      expect { factorial_sum(-10) }.to raise_error(ArgumentError, "number must be positive")
    end
  end

  context "bad utilization" do
    it "passing a value as sum argument when calling" do
      expect(factorial_sum(20, 40)).to eq(1580)
    end
  end
end