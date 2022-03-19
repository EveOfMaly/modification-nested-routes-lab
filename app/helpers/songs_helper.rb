module SongsHelper

    def display_name(song)
        if song.artist.nil?
          select_tag "song[artist_id]", options_from_collection_for_select(Artist.all, :id, :name)
        else
          hidden_field_tag "song_artist_name", song.artist_name
        end
    end


end
