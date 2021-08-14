class HomesController < ApplicationController
  def index
    @newses = News.order(updated_at: :desc).limit(3)
  end
end
