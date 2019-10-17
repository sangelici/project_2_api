class Town < ApplicationRecord
  belongs_to :user
  has_many :residents
end
