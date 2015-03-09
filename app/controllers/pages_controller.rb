class PagesController < ApplicationController

layout 'application'

def create
  @page = Page.new(page_params)
  @page.unique = loop do
     random_unique = SecureRandom.urlsafe_base64(4)
     break random_unique unless Page.where(unique: random_unique).exists?
   end

  @page.save
  redirect_to "/#{@page.unique}"
end

def show
  @page = Page.find_by(unique: params[:id])
  render 'show'
  # render :text => @page.html
end
 
private
  def page_params
    params.require(:page).permit(:html, :unique)
  end

end
