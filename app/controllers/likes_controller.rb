class LikesController < ApplicationController
  
    def like_toggle
      like = Like.find_by(user_id: current_user.id, vet_id: params[:vet_id])
      if like.nil?
        Like.create(user_id: current_user.id, vet_id: params[:vet_id])
      else
        like.destroy
      end
      redirect_to :back
    end
end