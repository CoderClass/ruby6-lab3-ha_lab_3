require 'rails_helper'

RSpec.describe Product, type: :model do
  # Use .alphabetical because it's a class method. Example: Product.alphabetical
  # Use #long_name when #long_name is an instance method. Example: @product.long_name
  describe ".alphabetical" do
    it "returns [] when there are no products" do    
      expect(Product.alphabetical).to be_empty
    end

    it "returns [a] when there is only one product a" do
      a = Product.create!(name: "product A")
      products = Product.alphabetical
      expect(products).to_not be_empty
      expect(products.size).to eq 1
      expect(products).to eq [a]
    end

    it "returns [a,b,c] after I create 3 products c, b, a" do
      c = Product.create!(name: "product C")
      b = Product.create!(name: "product B")
      a = Product.create!(name: "product A")
      products = Product.alphabetical
      expect(products).to_not be_empty
      expect(products.size).to eq 3
      expect(products).to eq [a, b, c]
    end
  end
end
