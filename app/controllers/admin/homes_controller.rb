class Admin::HomesController < Admin::AdminController
  def index
    @newses = News.order(created_at: :desc)
  end
end
