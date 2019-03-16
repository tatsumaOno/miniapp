class ArticlesController < ApplicationController
  before_action :set_article,only: [:edit,:update,:destroy,:show]
  def index
    @articles = Article.order('created_at DESC')
  end

  def new
    @article = Article.new
  end

  def create
    @article = Article.create(create_article)
    if @article.save
      redirect_to root_path
    else
      render :new
    end

  end

  def update
    if @article.update(create_article)
      redirect_to root_path
    else
      render :edit
    end

  end

  def destroy
    if current_user.id == @article.user_id
      @article.destroy
      redirect_to root_path
    end
  end


private
  def create_article
    params.require(:article).permit(:title,:text).merge(user_id: current_user.id)
  end
  def set_article
    @article = Article.find(params[:id])
  end
end
