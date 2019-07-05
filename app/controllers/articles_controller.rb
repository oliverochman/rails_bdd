# frozen_string_literal: true

class ArticlesController < ApplicationController
  def index
    @articles = Article.all
  end

  def new
    @article = Article.new
  end

  def create
    @article = Article.create(article_params)
    if @article.persisted?
      redirect_to articles_path(@article)
    else
      flash[:alert] = @article.errors.full_messages.to_sentence
      render :new
    end
  end

  private

  def article_params
    params.require(:article).permit(:title, :content, :author)
  end
end
