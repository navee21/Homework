require 'rspec'
require 'dessert'

=begin
Instructions: implement all of the pending specs (the `it` statements without blocks)! Be sure to look over the solutions when you're done.
=end

describe Dessert do
  subject(:cake) { Dessert.new("cake", 25, chef) }
  let(:chef) { double("chef", name: "Navjot") }

  describe "#initialize" do
    it "sets a type" do
      expect(cake.type).to eq("cake")
    end


    it "sets a quantity" do
      expect(cake.quantity).to eq(25)
    end

    it "starts ingredients as an empty array" do
      expect(cake.ingredients).to eq([])

    end

    it "raises an argument error when given a non-integer quantity" do
      expect(cake.quantity).to eq(25)
    end
  end

  describe "#add_ingredient" do
    it "adds an ingredient to the ingredients array" do
      cake.add_ingredient("flour")
      expect(cake.ingredients).to include("flour")
    end
  end

  describe "#mix!" do
    it "shuffles the ingredient array" do
      ingredients = ["flour","choclate","donuts","sugar"]

        ingredients.each do |elements|
            cake.add_ingredient(elements)
      end
        expect(cake.ingredients).to eq(ingredients)
        final=cake.mix!
        expect(final).not_to eq(ingredients)
        expect(final.sort).to eq(ingredients.sort)
    end
  end

  describe "#eat" do
    it "subtracts an amount from the quantity" do
      expect(cake.eat(10)).to eq(15)
      expect { cake.eat(500) }.to raise_error("not enough left!")
    end

    it "raises an error if the amount is greater than the quantity" do

    end
  end

  describe "#serve" do
    it "contains the titleized version of the chef's name" do
      allow(chef).to receive(:titleize).and_return("Chef Navjot the Great Baker")
     expect(cake.serve).to eq("Chef Navjot the Great Baker has made 25 cakes!")
  end
  end

  describe "#make_more" do
    it "calls bake on the dessert's chef with the dessert passed in" do
      expect(chef).to receive(:bake).with(cake)
      cake.make_more
    end
  end
end
