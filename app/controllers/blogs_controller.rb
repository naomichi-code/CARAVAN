class BlogsController < ApplicationController
  def index
  end

  def show
  end

  def new
    @blog = Blog.new
  end

  def edit
  end

  def create
    blog = Blog.new(blog_params)
    blog.save

    redirect_to blog_path
  end
end

private

def blog_params

  params.require(:blog).premit(:title, :category, ;body)
