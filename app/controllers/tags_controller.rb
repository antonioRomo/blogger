class TagsController < ApplicationController

  def index
    @tags = Tag.all
  end



  def show
    @tag = Tag.find(params[:id])
  end

  def destroy
    @tag = Tag.find(params[:id])
    Tag.destroy(params[:id])
    
    flash.notice = "Tag '#{@tag.name}' Deleted!"

    redirect_to action: "index"
  end

end
