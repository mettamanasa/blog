class PostsController < ApplicationController
  layout 'dashboard'
  before_action :authenticate_user!, except: [:index, :show]
  def index
    
    if params[:search] 
      @posts = Post.search(params[:search]).paginate(:page => params[:page], :per_page => 2).order("created_at DESC")  
    elsif params[:list_id] 
      @posts = Post.where(list_id: params[:list_id]).paginate(:page => params[:page], :per_page => 2).order("created_at DESC") 
    else 
      @posts = Post.day.order('created_at DESC').paginate(:page => params[:page], :per_page => 2)
    end
  end
  def new
     @post = Post.new
  end
  def create
     @post = Post.new(post_params)
     if @post.save
        redirect_to @post
     else
        render 'new'
     end
  end
  def show
    @post =Post.find(params[:id])
    session[:return_to] = request.referer
  end
  def edit
     @post =Post.find(params[:id])
  end
  def update
     @post =Post.find(params[:id])
     if @post.update(post_params)
        redirect_to @post
     else
       render 'edit'
     end
  end
  def destroy
    @post = Post.find(params[:id])
    @post.destroy
      redirect_to root_path
  end
  private
   def post_params
      params.require(:post).permit(:title, :body, :published_on ,:image, :list_id, :name)
   end
end
