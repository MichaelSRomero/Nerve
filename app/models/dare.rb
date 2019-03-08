class Dare < ApplicationRecord
  has_many :user_dares
  has_many :users, through: :dares

  validations :content, presence: true, uniqueness: true
end
