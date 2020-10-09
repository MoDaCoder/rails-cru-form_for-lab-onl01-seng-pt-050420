class Song < ApplicationRecord
    belongs_to :artist
    belongs_to :genre

    accepts_nested_attributes_for :artist, :genre
end
