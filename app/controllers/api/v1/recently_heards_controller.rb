class Api::V1::RecentlyHeardsController < ApplicationController
    def create
        @recently heard = current user.recently heards.new(album_id: params[:album_id])
        @recently_heard.save
        head :ok
    end
end
