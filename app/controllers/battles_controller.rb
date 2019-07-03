class BattlesController < ApplicationController

  def index
    @battles = Battle.all
  end

  def show
    @battle = Battle.find(params[:id])
  end

  def new
    @battle = Battle.new
  end

  def create
    @battle = Battle.new(battle_params)

    if @battle.player_one.lives > @battle.player_two.lives
      @avatar = @battle.player_one
    elsif @battle.player_one.lives < @battle.player_two.lives
      @avatar = @battle.player_two
    elsif @battle.player_one.lives == @battle.player_two.lives && @battle.player_one.attacks > @battle.player_two.attacks
      @avatar = @battle.player_one
    elsif @battle.player_one.lives == @battle.player_two.lives && @battle.player_one.attacks < @battle.player_two.attacks
      @avatar = @battle.player_two
    end

    if @avatar
      @battle.winner = @avatar.name
      @avatar.victories += 1
      @avatar.save
    else
      @battle.winner = "none"
    end

    if @battle.save
      redirect_to battle_path(@battle)
    else
      render :new
    end

  end


  private

  def battle_params
    params.require(:battle).permit(:player_one_id, :player_two_id, :weapon_one_id, :weapon_two_id, :shield_one_id, :shield_two_id)
  end
end
