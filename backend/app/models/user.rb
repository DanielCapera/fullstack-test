class User < ApplicationRecord
  belongs_to :company
  has_secure_password

  validates :name, :lastname, :position, :salary, :phone, :email, presence: true
end
