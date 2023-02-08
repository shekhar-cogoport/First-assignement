class ArticleController < ApplicationController
    skip_before_action :verify_authenticity_token
    def index
        c=Article.all;
        render json: c
    end
    def find
        c=Article.find(params[:id]);
        render json: c
    end    
    def category
        const=params[:id]
        # puts "sare jha se accha"
        c=Article.where(a_cat: const)
        render json: c
    end 
    def author
        const=params[:id]
        # puts const
        c=Article.where(a_auth: const)
        render json: c
    end  
    def create
        # const=params[:id]
        c=Article.create(title: params[:title],a_auth: params[:a_auth],a_date: params[:a_date],a_contact: params[:a_contact],a_cat: params[:a_cat]);
        render json: c
    end
    def updateone
        # const=params[:id]
        article=Article.find(params[:id]);
        article.update(title: params[:newpass]);
        render html: "Trying to update"
    end
    def delete
        article=Article.find(params[:id]);
        article.destroy;
        render html: "Trying to delete"
    end
    def findbydate
        article=Article.where(:a_date => params[:first_date]..params[:last_date]);
        render json: article
    end
    def findbypartials
        article=Article.findby()
    end    
end   
  
