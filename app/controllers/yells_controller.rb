class YellsController < ApplicationController
  protect_from_forgery
  def top; end

  def show
    @yell = Yell.all.sample
  end

  def new
    @yell = Yell.new
  end

  def create
    @yell = Yell.new(yell_params)
    if @yell.save
      redirect_to "/yells/success"
    else
      render :new, status: :unprocessable_entity
    end
  end

  def success; end

  private

  def yell_params
    params.require(:yell).permit(:name, :body)
  end
end
