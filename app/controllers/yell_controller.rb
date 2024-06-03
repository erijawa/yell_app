class YellController < ApplicationController
  def top; end

  def show
    @yell = Yell.all.sample
  end

  def new
  end

  def create
    yell = Yell.new(yell_params)
    yell.save!
    redirect_to yell_success_path
  end

  def success; end

  private

  def yell_params
    params.require(:yell).permit(:name, :body)
  end
end
