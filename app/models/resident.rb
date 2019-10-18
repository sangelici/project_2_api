class Resident < ApplicationRecord
  belongs_to :town
  belongs_to :user
end
