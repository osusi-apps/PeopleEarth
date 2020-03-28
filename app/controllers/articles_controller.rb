class ArticlesController < ApplicationController
  def index
    @category = Category.all
    if params[:category_id]
      @category = Category.find_by(id: params[:category_id].to_i)
      @articles = @category.articles.order(created_at: :desc).all
    else
      @articles = Article.order(created_at: :desc).all
    end
  end

  def show
    @article = Article.find_by(id: params[:id])
  end

end
