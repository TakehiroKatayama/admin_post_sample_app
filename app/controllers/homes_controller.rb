class HomesController < ApplicationController
  def index
    @newses = News.order(updated_at: :desc)
  end
end
