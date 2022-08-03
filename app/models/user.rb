class User < ApplicationRecord
    require "securerandom"

    has_secure_password

    validates :name, presence: true
    validates :email, presence: true, uniqueness: true
    validates :password, presence: true

    has_many :messages, dependent: :destroy
end
