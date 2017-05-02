require 'rails_helper'

describe Restaurant, type: :model do

  it 'is not valid with a name of more than twenty characters' do
    restaurant = Restaurant.new(name: "this is a very very very long name for a restaurant")
    expect(restaurant).to have(1).error_on(:name)
    expect(restaurant).not_to be_valid
  end

end
