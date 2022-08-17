class TeachersController < ApplicationController
  def index
    @students = Student.all
  end

  def teupdates
    @updates = Update.all.order(created_at: :desc)
  end
end
