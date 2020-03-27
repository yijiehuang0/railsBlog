class PostsController < ApplicationController
    def index
        @post = Post.all
    end

    def new
        @post = Post.new
    end

    def create
        # we are going to first create a new post
        @post = Post.new(post_params)

        if @post.save
            redirect_to @post
        else 
            render 'new'
        end
    end

    def show
        @post = Post.find(params[:id])
    end

    def update
        @post = Post.find(params[:id])
        if @post.update(post_params)
            redirect_to @post
        else
            render 'edit'
        end
    end

    def edit
        @post = Post.find(params[:id])
    end

    def destroy
        @post = Post.find(params[:id])
        @post.destroy

        redirect_to posts_path
    end



    #what does this post_params function do in this case? It must check that it requires a post and that it permits the following things in 
    # in the function
    private
    def post_params
        params.require(:post).permit(:title, :content)
    end

end
