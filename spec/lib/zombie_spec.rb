require 'spec_helper'
require "zombie"

describe Zombie do 
  it "is named Ash" do 
    zombie = Zombie.new(name: 'Ash')
    expect(zombie.name == 'Ash')
  end

  it "has no brains" do 
    zombie = Zombie.new(brains: 0)
    expect(zombie.brains < 1)
  end

  it 'is hungry' do
    zombie = Zombie.new
    expect(zombie.hungry?)
  end

end 