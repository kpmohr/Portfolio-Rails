class PortfoliosController < ApplicationController

  def index
    @portfolios = Portfolio.all
  end

  def all
    @portfolios = Portfolio.all
  end

  def show
    @portfolio = Portfolio.find(params[:id])
  end

  def new
    @portfolio = Portfolio.new
  end

  def create
    @portfolio = Portfolio.new(portfolio_params)
    if @portfolio.save
      redirect_to portfolio_path(@portfolio.id)
    else
      flash[:alert] = "Create Error!"
    end
  end

  def edit
    @portfolio = Portfolio.find(params[:id])
  end

  def update
    @portfolio = Portfolio.find(params[:id])
    if @portfolio.update(portfolio_params)
      redirect_to @portfolio
    else
      flash[:alert] = "Update Error!"
    end
  end

  def destroy
    @portfolio = Portfolio.find(params[:id])
    if @portfolio.destroy
      redirect_to :portfolios_all
    else
      flash[:alert] = "Destroy Error!"
    end
  end

  private

  def portfolio_params
    params.require(:portfolio).permit(:name, :topic, :product, :description, :image_url)
  end

end
