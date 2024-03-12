class PlayersController < ApplicationController

  def index
  if user_signed_in?
    @players = current_user.players
  else
    @players = []
  end
end
  def new
    @player = Player.new
  end

  def create
    Player.create(player_params)
    redirect_to '/'
  end

  def show
    @player = Player.find(params[:id])
    @stat = Stat.new
    @stats = @player.stats
  end
  

  def edit
    @player = Player.find(params[:id])
   end

   def update
    player = Player.find(params[:id])
    player.update(player_params)
    redirect_to root_path
  end

  def destroy
    player = Player.find(params[:id])
    player.destroy
    redirect_to root_path
  end
  private
  def player_params
    params.require(:player).permit(:name, :position, :birthday, :height, :weight, :image).merge(user_id: current_user.id)
  end
end
