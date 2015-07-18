class PagesController < ApplicationController

def create
  page = Page.new(page_params)

  if page.save
    redirect_to "/#{page.unique}"
  else
    errors = page.errors.messages

    flash[:error] = errors.reduce("") do |str, (k,v)|
      str += "#{k} #{v.join(', ')}"
    end

    redirect_to :back
  end
end

def show
  @page = Page.find_by(unique: params[:id])
  render 'show'
end
 
private
  def page_params
    params.require(:page).permit(:html, :unique)
  end
end
