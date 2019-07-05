class ArticlesController < ApplicationController
  def index
    @articles = Article.all
  end

  def new
    @article = Article.new
  end
  
  def create
    @article = Article.new(article_params)
    if @article.save
      redirect_to @article
    else
      
      binding.pry
      flash[:alert] = @article.errors.full_messages.to_sentence
      render :new 
    end
  end

  private
  def article_params
    params.require(:article).permit(:title, :content, :author)
  end
end