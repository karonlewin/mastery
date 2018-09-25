class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  before_action :set_store

  private

  def set_store
    # return if self.class == Store
    # self.store = current_user.store
    # byebug
  end
end
