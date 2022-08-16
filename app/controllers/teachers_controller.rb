class TeachersController < ApplicationController
  def index
  end

  def teupdates
    @updates = Update.all.order(created_at: :desc)
  end
end
