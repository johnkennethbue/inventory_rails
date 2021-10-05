class GamesController < ApplicationController
    before_action :set_game, only: [:show, :edit, :update, :destroy]

    def create
    @game = Game.new(game_params)
            if @game.save
              redirect_to @game, notice: 'New game has been added to the inventory.'
            else
            flash[:notice] = "Invalid Input!"
            flash[:color] = "invalid"
              render 'new'
            end
    end

    def update
            if @games.update(game_params)
              redirect_to @games, notice: 'Game description successfully updated.'
            else
              render :edit
            end
    end

    def destroy
            @games.destroy
            redirect_to @games, notice: 'Game has been removed from the inventory.'
    end

    def show
    end
              
    def new
    @game = Game.new
    end
      
    def index
    @games = Game.all
    end
  
    def edit
    end
  
    private
    def set_game
        @games = Game.find(params[:id])
    end
      
    def game_params
        params.require(:game).permit(:game_title, :description, :id, :platform, :quantity)
        end
    end