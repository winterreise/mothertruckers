require_relative '../spec_helper'

# Units that can fight, such as the Footman, have both health points to indicate their health and attack power to indicate how much damage they deal to other units
# As such, they must start off with a certain amount of each

describe Truck do

  before :each do
    @truck = Truck.create(name: "Test Truck")
  end

  it "a Truck has a positive rating" do
    @truck.ratings.should be_greater_than_or_equal_to(0)
  end

  it "a Truck has notes" do
    @truck.notes.to be_truthy
  end

  after :each do
    @truck.destroy
  end
  
end