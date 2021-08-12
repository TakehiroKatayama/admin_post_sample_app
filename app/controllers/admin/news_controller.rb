class Admin::NewsController < Admin::AdminController
  def show
    @news = News.find(params[:id])
  end

  def new
    @news = News.new
  end

  def create
    news = News.create!(news_params)
    redirect_to admin_news_path(news)
  end

  private

  def news_params
    params.require(:news).permit(:title, :content, :image)
  end
end
