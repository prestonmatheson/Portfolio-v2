class BlogsController < ApplicationController
  def index
    @blogs = Blog.all
  end

  def show
    @blog = Blog.find(params[:id])

    @page_title = @blog.title
    @seo_keywords = @blog.body
  end

  def new
  end

  def create
    @blog = Blog.new(params[:blog].permit(blog_params))

    @blog.save
    redirect_to @blog
  end

  private 

  def blog_params
    params.require(:blog).permit(:title, :body, :topic_id, :status)
  end
end