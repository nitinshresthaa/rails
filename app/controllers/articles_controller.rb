class ArticlesController < ApplicationController

    before_action :set_article, only: [:edit, :update, :show, :destroy]

    def index 
        @articles = Article.paginate(page: params[:page], per_page: 5)
    end

    def new
        @article = Article.new
    end

    def create
        #render plain: params[:article].inspect
        @article = Article.new(article_params)
        @article.user = User.first
        if @article.save
            flash[:notice] = "Article was successfully created"
            redirect_to article_path(@article)
           else
            render 'new'
           end
        end

    def show 
        # Rails.logger.debug("My object: #{@article.inspect}")
        # @article = Article.find(params[:id])
    end

    def edit 
        # @article = Article.find(params[:id])
    end

    def update 
        # @article = Article.find(params[:id])
        if @article.update(article_params)
            redirect_to articles_path
            flash[:notice] = "Article was updated"
        else
            flash[:notice] = "Articles couldnot be updated"
            render 'edit'
        end
    end

    def destroy 
        # @article = Article.find(params[:id])
        @article.destroy
        flash[:notice] = "Article was deleted"
        redirect_to articles_path
    end

      private
        def article_params
         params.require(:article).permit(:title, :description)
        end

        def set_article
            @article= Article.find(params[:id])
        end
      end