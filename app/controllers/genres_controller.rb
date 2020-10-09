class GenresController < ApplicationController
    before_action :find_genre, only:[:show, :edit, :update]

    def index
        @genres = Genres.all
    end

    def show
    end
    
    def new
        @genre = Genre.new
    end

    def create
        @genre = Genre.new(name: params[:genre][:name])
    end

    def edit
    end

    def update
    end

    private

    def genre_params
    end

    def find_genre
        @genre = Genre.find(params[:id])
    end

end
