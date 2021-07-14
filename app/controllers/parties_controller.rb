class PartiesController < ApplicationController
    def index
        @parties = Party.all.order('date desc')
    end

    def show 
        @party = Party.find_by_id(params[:id])
    end

    def new
        @party = Party.new
        @party.build_category
        3.times {@party.supplies.build}
    end

    def create
        # byebug
         @party = Party.new(party_params)
         if @party.save
            redirect_to party_path(@party)
         else
            render :new
         end
    end

    def edit
      @party = Party.find_by(id: params[:id])
    end

    def update
        @party = Party.find_by(id: params[:id])
        if @party.update(party_params)
            redirect_to party_path(@party)
        else
            render :edit
        end
    end

    private
    def party_params
        params.require(:party).permit(:name, :date, :budget, :category_id, :category_attributes => [:name], :supply_ids => [], :supplies_attributes => [:name] )
    end
end
