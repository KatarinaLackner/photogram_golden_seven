class PhotosController < ApplicationController

  def index
    @list_of_photos = Photo.all
  end

  def show

    @photo = Photo.find_by({ :id => params[:id] })
    @photo_source = @photo.source
    @photo_caption = @photo.caption
    @photo_id = @photo.id

  end

  def new_form

  end

  def create_row

    p = Photo.new
    p.caption = params[:the_caption]
    p.source = params[:the_source]
    p.save

    #render("create_row.html.erb")
    redirect_to("localhost:3000/photos")

  end

  def destroy

    

    end
end
