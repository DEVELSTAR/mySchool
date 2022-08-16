class StudentsController < ApplicationController
  def index
  end

  def stupdates
    @updates = Update.all.order(created_at: :desc)
  end
end
