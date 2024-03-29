# frozen_string_literal: true
class User < ApplicationRecord
  has_many :user_items
  has_many :items, through: :user_items
end
