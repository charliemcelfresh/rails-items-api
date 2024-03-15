# frozen_string_literal: true

class ItemsController < ApplicationController
  before_action :ensure_valid_user

  def index
    page = params[:page] || 0
    items = current_user
      .user_items
      .joins(:item)
      .select('items.id', 'items.name', 'items.created_at', 'items.updated_at')
      .limit(10)
      .offset(page)
    render json: items
  end
end
