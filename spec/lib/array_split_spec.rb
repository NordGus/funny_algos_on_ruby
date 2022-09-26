require "./lib/array_split"

describe "#array_split" do
  context "passing valid values" do
    it "should return an array of chunks of the original array" do
      input = %w[a b c d e f g h i j k l]
      subdivisions = 4

      expected = [
        %w[a b c],
        %w[d e f],
        %w[g h i],
        %w[j k l]
      ]

      expect(array_split(input, subdivisions)).to eq(expected)
    end

    it "should return an array of chunks of the original array" do
      input = %w[a b c d e f g h i j k l]
      subdivisions = 1

      expected = [%w[a b c d e f g h i j k l]]

      expect(array_split(input, subdivisions)).to eq(expected)
    end

    context "when the subdivision size is not perfect" do
      it "should return an array of chunks of the original array leaving nil values for unmatched length" do
        input = %w[a b c d e f g h i j k l m n]
        subdivisions = 5

        expected = [
          %w[a b c],
          %w[d e f],
          %w[g h i],
          %w[j k l],
          ["m", "n", nil]
        ]

        expect(array_split(input, subdivisions)).to eq(expected)
      end
    end
  end

  context "passing 0 as subdivisions argument" do
    it "should raise ArgumentError exception" do
      input = %w[a b c d e f g h i j k l m n]
      subdivisions = 0

      expect { array_split(input, subdivisions) }.to raise_error(ArgumentError, "subdivisions must be greater than 0")
    end
  end

  context "passing 0 as subdivisions argument" do
    it "should raise ArgumentError exception" do
      input = %w[]
      subdivisions = 1

      expect { array_split(input, subdivisions) }.to raise_error(ArgumentError, "subdivisions must be less or equal to array length")
    end

    it "should raise ArgumentError exception" do
      input = %w[a b c]
      subdivisions = 5

      expect { array_split(input, subdivisions) }.to raise_error(ArgumentError, "subdivisions must be less or equal to array length")
    end
  end
end