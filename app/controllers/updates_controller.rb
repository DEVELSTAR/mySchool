class UpdatesController < ApplicationController
  def index
    @updates = Update.all
  end
end