class CategoriesController < ApplicationController
    before_action :get_category, only: :show
    before_action :get_categories, only: :index
    def index
    end

    def show
        @parties = @category.parties
    end

    private

    def set_category
        @category = Category.new
    end

    def get_category
        @category = Category.find_by(id: params[:id])
    end

    def get_categories
        @categories = Category.all
    end
end
