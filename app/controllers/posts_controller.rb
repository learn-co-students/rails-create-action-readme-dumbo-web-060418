class PostsController < ApplicationController
	def index
		@posts = Post.all
	end

	def show
		@post = Post.find(params[:id])
	end

	def new
		@post = Post.new
	end

	def create
	  @post = Post.new ## saved new post into an instance
	  @post.title = params[:title] ## used instance and assigned a title it took in thru the form
	  @post.description = params[:description]
	  @post.save ## saved instance with new params
	  redirect_to post_path(@post) # redirected to the saved post show page /posts/:id
	end
end
