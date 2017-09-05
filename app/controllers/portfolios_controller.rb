class PortfoliosController < ApplicationController
  def index
    @portfolios = Portfolio.all
  end

  def new
    @portfolio = Portfolio.new
  end

  def create
    @portfolio = Portfolio.new(get_params)
    if @portfolio.save
      flash[:success] = "Portfolio created!"
      redirect_to portfolios_path
    else
      render 'new'
    end
  end

  private

  def get_params
    params.require(:portfolio).permit(:title, :subtitle, :body)
  end
end
