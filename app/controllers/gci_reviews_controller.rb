class GciReviewsController < ApplicationController
  def load
    respond_to do |format|
      format.js { render :action => 'load_reviews' }
    end
  end
end
