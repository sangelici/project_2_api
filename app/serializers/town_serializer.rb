class TownSerializer < ActiveModel::Serializer
  attributes :id, :name, :town_fruit, :mayor, :user_id
end
