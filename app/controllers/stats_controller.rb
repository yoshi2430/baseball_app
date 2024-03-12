class StatsController < ApplicationController
  def create
    @stat = Stat.new(stat_params)
  if @stat.save
    redirect_to player_path(params[:player_id])
  else
    render :new
  end
  end

  def edit
    @stat = Stat.find(params[:stat_id])
  end

  def update
  @stat = Stat.find(params[:stat_id])
  if @stat.update(stat_params)
    redirect_to player_path(params[:player_id])
  else
    render :edit
  end
end

  def new
   @player = Player.find(params[:player_id]) 
   @stat = Stat.new
   
  end
  private
  def stat_params
    params.require(:stat).permit(:at_bats, :at_hits, :home_runs, :rbis, :innings_pitched, :earned_run).merge(player_id: params[:player_id])
  end
end
