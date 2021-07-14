class SuppliesController < ApplicationController
    before_action :set_supply, only: :new
    before_action :get_supply, only: [:show]
    before_action :get_supplies, only: :index

    def index
    end

    def show
        @parties = @supply.parties
    end

    def new
    end

    def create
    end

    private 

    def set_supply
        @supply = Supply.new
    end

    def get_supply
        @supply = Supply.find_by(id: params[:id])
    end

    def get_supplies
        @supplies = Supply.all
    end
end
