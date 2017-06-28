class VisitorsController < ApplicationController
  def index
    @products = params[:sort] == 'alphabetical' ? Product.alphabetical : Product.all
  end
end
