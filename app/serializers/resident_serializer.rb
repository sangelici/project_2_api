class ResidentSerializer < ActiveModel::Serializer
  attributes :id, :name, :animal_type, :birthday, :hobby
end
