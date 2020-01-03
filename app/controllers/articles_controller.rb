class ArticlesController < ApplicationController
  def index
    @category = Category.all
    if params[:category_id]
      @category = Category.find_by(id: params[:category_id])
      @articles = @Category.articles.order(created_at: :desc).all
    else
      @articles = Article.order(created_at: :desc).all
    end
  end

  def show
    @articleDetails = Article.find_by(id: params[:id])
    @writers = Writer.find_by(name: @articleDetails.writer)
    @category = Category.find_by(id: @articleDetails.category_id)
  end

end
