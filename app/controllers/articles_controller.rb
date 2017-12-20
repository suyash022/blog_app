class ArticlesController < ApplicationController

  http_basic_authenticate_with name: "suyash", password: "1234", except: [:index, :show]
  # layout 'main'
  def index
    @articles = Article.all
  end

  def show
    @article = Article.find(params[:id])
    @comments = @article.comments.paginate(:page => params[:page], :per_page => 1)

  end

  def new
    @article = Article.new
  end

  def edit
    @article = Article.find(params[:id])
  end

  def create
    @article = Article.new(article_params)

    if @article.save
      redirect_to @article
    else
      render 'new'
    end
  end

  def update
    @article = Article.find(params[:id])

    if @article.update(article_params)
      redirect_to @article
    else
      render 'edit'
    end
  end

  def destroy
    @article = Article.find(params[:id])
    @article.destroy

    redirect_to articles_path
  end

  def my_method
  render html: "hello user"
  end

  private
  def article_params
    params.require(:article).permit(:title, :text)
  end
end