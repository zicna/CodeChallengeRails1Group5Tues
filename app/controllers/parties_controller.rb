class PartiesController < ApplicationController
before_action :get_party, only: [:show, :edit, :update]

    def index
        # byebug
        if params[:category_id] && @category = Category.find_by(id: params[:category_id])
            @parties = @category.parties
        else
            @parties = Party.all.order('date desc')
        end
        
    end

    def show 
        @category = @party.category
    end

    def new
        if params[:category_id] && @category = Category.find_by(id: params[:category_id])
            @party = Party.new(category_id: params[:category_id])
        else
            @party.build_category
            
        end
        3.times {@party.supplies.build}
    end

    def create
         @party = Party.new(party_params)
         if @party.save
            redirect_to party_path(@party)
         else
            render :new
         end
    end

    def edit
    #   @party = Party.find_by(id: params[:id])
    end

    def update
        # @party = Party.find_by(id: params[:id])
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

    def get_party
        @party = Party.find_by(id: params[:id])
    end
end
