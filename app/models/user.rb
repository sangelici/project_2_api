# frozen_string_literal: true

class User < ApplicationRecord
  include Authentication
  has_many :examples
  has_many :towns
  has_many :residents, through: :town
end

#user has_many res through town - user model
