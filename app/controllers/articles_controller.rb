class ArticlesController < ApplicationController
  def index
    @articles = Article.all
  end

  def new
    
    binding.pry
    
  end
end