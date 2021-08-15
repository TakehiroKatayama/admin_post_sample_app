class NewsController < ApplicationController
  def index
    @newses = News.all
  end

  def show
    @news = News.find(params[:id])
  end

  private

  def news_params
    params.require(:news).permit(:title, :content, :image)
  end
end
