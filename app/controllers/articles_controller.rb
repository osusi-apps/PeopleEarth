class ArticlesController < ApplicationController
  def index
    @articles = Article.all
  end
  def show
    @articleDetails = Article.find_by(id: params[:id])
    @writers = Writer.find_by(name: @articleDetails.writer)
  end
end
