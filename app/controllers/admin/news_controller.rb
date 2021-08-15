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

  def edit
    @news = News.find(params[:id])
  end

  def update
    @news = News.find(params[:id])
    if @news.update(news_params)
      redirect_to admin_news_path(@news), success: '編集しました'
    else
      flash.now['danger'] = '編集失敗'
      render :edit
    end
  end

  def destroy
    @news = News.find(params[:id])
    @news.destroy!
    redirect_to admin_root_path
  end

  private

  def news_params
    params.require(:news).permit(:title, :content, :image)
  end
end
