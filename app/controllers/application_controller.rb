# frozen_string_literal: true
class ApplicationController < ActionController::API

  def ensure_valid_user
    if !current_user
      render status: :unauthorized
    end
  end

  def current_user
    user_id = request.headers["X-User-Id"]
    User.select(:id).where(id: user_id).first
  end
end
