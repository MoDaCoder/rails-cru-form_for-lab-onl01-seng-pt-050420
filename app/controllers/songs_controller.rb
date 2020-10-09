class SongsController < ApplicationController
    before_action :find_song, only:[:show, :edit, :update]

    def index
        @songs = Songs.all
    end

    def show
    end
    
    def new
        @song = Song.new
    end

    def create
        @song = Song.new(song_params)
        @song.save
        redirect_to song_path(@song.id)
    end

    def edit
    end

    def update
        @song.update(params.require(:song).permit(song_params))
        redirect_to song_path(@song.id)
    end

    private

    def song_params
        params.require(:song).permit(:name, :artist_id, :genre_id, artists_attributes:[:name, :bio], genres_attributes:[:name])
    end

    def find_song
        @song = Song.find(params[:id])
    end

end
