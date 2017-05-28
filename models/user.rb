# frozen_string_literal: true

class User < ActiveRecord::Base
  # has_secure_password
  has_many :assignments
  has_many :roles, :through => :assignments
  attr_accessor :full_name, :username, :email, :notifications

  def role?(role)
    roles.any? { |r| r.name.underscore.to_sym == role }
  end
end
