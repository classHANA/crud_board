class PostController < ApplicationController
  def index
  	@posts = Post.all
  end

  def show
  	@id = params[:id]
  	@post = Post.find(@id)

  end
  
  def destroy
  	@id = params[:id]
  	@post = Post.find(@id)

  	@post.destroy

  	redirect_to '/'

  end

  def edit
	@id = params[:id]
  	@edit_post = Post.find(@id)

  end

  def update
	
	Post.find(params[:id]).update(title: params[:title], content: params[:content])  	

  	#redirect_to "/post/show/#{@id}"
  	redirect_to "/post/show/#{params[:id]}"
  end

  def new
  end

  def create
  	@t = params[:title]
  	@c = params[:content]

  	# @post = Post.new
  	# @post.title = @t
  	# @post.content = @c
  	# @post.save

  	Post.create(title: @t,content: @c)
  	redirect_to '/'
  	# CRUD
  end


end














