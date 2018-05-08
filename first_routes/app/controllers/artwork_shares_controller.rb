class ArtworkSharesController < ApplicationController

  def index
    # @artwork_shares = ArtworkShare.joins(:artwork).where(artist_id: params[:user_id])
    # this gets half
    @artwork_shares = ArtworkShare.where(viewer_id: params[:user_id])
    render json: @artwork_shares
  end

  private
  
  def artwork_share_params
    params.require(:artwork_shares).permit(:viewer_id, :artwork_id)
  end
end
