class Pokemon < ApplicationRecord
  def self.accessible_attributes
    # identifier -> numéro du pokemon non unique pour accomoder les mega évolutions et divers versions du même pokemon
    [:identifier, :name, :type_1, :type_2, :total, :hp, :attack, :defense,
     :sp_attack, :sp_defense, :speed, :generation, :legendary]
  end
end