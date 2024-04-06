# frozen_string_literal: true

class ItemsController < ApplicationController
  before_action :ensure_valid_user

  def index
    limit = params[:limit] || 10
    offset = params[:offset] || 0
    items = current_user
      .user_items
      .joins(:item)
      .select('items.id', 'items.name', 'items.created_at', 'items.updated_at')
      .limit(limit)
      .offset(offset)
    render json: items
  end
end
