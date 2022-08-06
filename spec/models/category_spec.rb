require 'rails_helper'

RSpec.describe Category, type: :model do
  describe "Association" do
  it "belongs to menu" do
  category = Category.new(
    name: "makanan"
  )

    should respond_to(:menu)
    end
  end
end