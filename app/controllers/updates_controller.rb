class UpdatesController < ApplicationController

  def index
    @updates = Update.all.order(created_at: :desc)
  end


  def new
    @update = Update.new
  end

  def create
    @update = Update.new(update_params)
    if @update.save
      redirect_to teachers_teupdates_path
    else
      render :new
    end
  end

  
   private

  def update_params
    params.require(:update).permit(:title, :body )
  end

end