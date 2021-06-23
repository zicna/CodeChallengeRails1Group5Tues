class PartyController < ApplicationController
    def index
        @parties = Party.all.order('date desc')
    end

    def show 
        @party = Party.find_by_id(params[:id])
    end
end
