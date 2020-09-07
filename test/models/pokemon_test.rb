require 'test_helper'

class PokemonTest < ActiveSupport::TestCase

  test "should reach existing pokemon" do
    mon = Pokemon.find(1)
    assert !mon.nil?, true
  end

  test "should create new pokemon" do
    mon = Pokemon.new(:identifier => 2, :name => "Ivysaur", :type_1 => "Grass", :type_2 => "Poison", :total => 405, :hp => 60,
                      :attack => 62, :defense => 63, :sp_attack => 80, "sp_defense" => 80, "speed" => 60, "generation" => 1, "legendary" => "False")
    assert mon.save, "Error - Could not create pokemon"
  end

  test "should update existing pokemon" do
    mon = Pokemon.find(1)
    assert mon.update_attribute(:name, 'Bulbasaur2'), "Error - Could not update pokemon"
  end

  test "should delete pokemon" do
    mon = Pokemon.find(1)
    assert mon.destroy, "Error - Could not delete pokemon"
  end
end
