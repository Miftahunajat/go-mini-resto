require 'rails_helper'

RSpec.describe Food, :type => :model do
  it 'is valid with valid attributes' do
    expect(Food.new(name: 'name', description: 'desc', price: 0)).to be_valid
  end

  it 'is not valid without a name' do
    food = Food.new(name: nil)
    expect(food).to_not be_valid
  end

  it 'is not valid without a description' do
    food = Food.new(description: nil)
    expect(food).to_not be_valid
  end

  it 'is not valid without a price' do
    food = Food.new(price: nil)
    expect(food).to_not be_valid
  end
end