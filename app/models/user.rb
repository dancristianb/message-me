class User < ApplicationRecord
  has_many :messages

  validates :username, length: { minimum: 3, maximum: 15 },
                       uniqueness: { case_sensitive: false }

  has_secure_password
end
