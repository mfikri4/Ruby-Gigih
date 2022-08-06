require 'rails_helper'

RSpec.describe Menu, type: :model do
  it 'is valid with a name and a description' do
    # menu_item = Menu.new(
    #   name: 'Nasi Uduk',
    #   description: 'Betawi style steamed rice cooked in coconut milk. Delicious!',
    #   price: 15000.0
    # )

    expect(FactoryBot.build(:Menu)).to be_valid
  end

it "is invalid with a duplicate name" do
    menu_item1 = FactoryBot.create(:Menu, name: 'Nasi Uduk')
    menu_item2 = FactoryBot.build(:Menu, name: 'Nasi Uduk')

    menu_item2.valid?

    expect(menu_item2.errors[:name]).to include("has already been taken")
  end
    
  it 'is valid with a price 0.01' do

    expect(FactoryBot.build(:Menu)).to be_valid
  end

  it "is valid with description 150 characters" do

    expect(FactoryBot.build(:Menu)).to be_valid
  end

  describe "Assosiations" do
    it "has one category" do
    menu = Menu.new(
        name: 'Nasi Uduk',
        desc: 'Betawi style steamed rice cooked in coconut milk. Delicious!',
      price: 15000.0,
      category_id: 1
    )
      
      should respond_to(:category)
    end
  end 
end