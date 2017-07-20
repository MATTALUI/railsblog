class ArticlesController < ApplicationController
  def new
  end
  def create

    puts params[:article].inspect
    @article = Article.new(article_params)
    @article.save
    redirect_to @articl
    # cats = {:plain => params[:article].inspect}
    # render cats
    # render {:plain => params[:article].inspect}
  end

  private
  def article_params
    params.require(:article).permit(:title, :text)
  end
end
