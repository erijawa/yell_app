class Yell < ApplicationRecord
  validates :name, presence: true, length: {maximum: 255}
  validates :body, presence: true, length: {maximum: 255}
end
