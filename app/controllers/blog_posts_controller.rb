class BlogPostsController < ApplicationController
  before_action :set_blog_post, only: %i[ show edit update destroy ]

  def index
    @blog_posts = BlogPost.all
  end

  def show
  end

  def new
    @blog_post = BlogPost.new
  end

  def create
    @blog_post = BlogPost.new(blog_post_params)

    if @blog_post.save
      redirect_to @blog_post.url, notice: "Blog post was successfully created."
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
  end

  def update
    if @blog_post.update(blog_post_params)
      redirect_to @blog_post.url, notice: "Blog post was successfully updated.", status: :see_other
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @blog_post.destroy!
    redirect_to root_path, notice: "Blog post was successfully destroyed.", status: :see_other
  end

  private
    def set_blog_post
      @blog_post = BlogPost.find_by!(name: params.expect(:name))
    end

    def blog_post_params
      params.expect(blog_post: [ :name ])
    end
end
