class PostsController < ApplicationController
  before_action :authenticate_user!, only: %i[new create]

  # GET /posts or /posts.json
  def index
    @posts = Post.all.order('created_at DESC')
    @post = Post.new
  end

  # GET /posts/new
  def new
    @post = current_user.posts.build
    @post = Post.new
  end

  # POST /posts or /posts.json
  def create
    @post = current_user.posts.build(post_params)

    respond_to do |format|
      if @post.save
        format.html { redirect_to root_path, notice: 'Post was successfully created.' }
      else
        format.html { render :new, status: :unprocessable_entity }
      end
    end
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_post
    @post = Post.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def post_params
    params.require(:post).permit(:title, :content)
  end
end
