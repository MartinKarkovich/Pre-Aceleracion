# frozen_string_literal: true

class User < ActiveRecord::Base
  extend Devise::Models
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  include DeviseTokenAuth::Concerns::User

  # Validations
  validates :password,:first_name,:last_name,:email,presence:true
  #validates :password, length: { in: 8..16 }

end
