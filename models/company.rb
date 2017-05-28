# frozen_string_literal: true

class Company < ActiveRecord::Base
  has_many :user
  has_many :machine
end
