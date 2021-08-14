class HomesController < ApplicationController
  def index
    @newses = News.order(updated_at: :desc).limit(5)
  end
end
