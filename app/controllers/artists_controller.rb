class ArtistsController < ApplicationController
    before_action :find_artist, only:[:show, :edit, :update]

    def index
        @artists = Artists.all 
    end

    def show
    end
    

    def create
        @artist = Artist.new(name: params[:artist][:name], bio: params[:artist][:bio])
        @artist.save
        redirect_to artist_path(@artist.id)
    end

    def new
        @artist = Artist.new 
    end

    def edit
    end

    def update
        @artist = Artist.find(params[:id])
        @artist.update(artist_params(:name, :bio))
        redirect_to artist_path(@artist.id)
    end

    private

    def artist_params
        params.require(:artist).permit(:name, :bio)
    end

    def find_artist
        @artist = Artist.find(params[:id])
    end

end
