class GciReviewsController < ApplicationController
  before_action :must_have_api_code
  before_action :check_valid_url, only: [:box, :list]

  # Loading initial javascript, css
  def load
    respond_to do |format|
      format.js { render :action => 'load_reviews' }
      format.css { render :action => 'full_box' }
    end
  end

  # Loading HTML box for review
  def box
    respond_to do |format|
      format.html {
        @clinic = @gci_reviews_api.clinic

        if @gci_reviews_api.gci_reviews_api_type.show_type == 'full'
          render action: 'full_box', layout: false
        else
          render action: 'mini_box', layout: false
        end
      }
    end

  end

# Json ajax queries for reviews
  def list
    respond_to do |format|
      format.json {
        render json: @gci_reviews_api.gci_reviews_api_reviews.limit(10).to_json(include: :country)
      }
    end
  end

  private
  def must_have_api_code
    @gci_reviews_api = GciReviewsApi.find_by(api_code: params.require(:api))
  end

  # Check for correct referer - compare only domain name
  def check_valid_url
    refererURI = URI(request.referer.to_s).host.to_s
    allowedURI = @gci_reviews_api.web_page.to_s.split(',').map! { |uri| uri = URI(uri).host }

    respond_to do |format|
      format.all {
        render text: 'Access denied. Wrong referer page'.html_safe, layout: false
      }
      #end if refererURI.empty? || !allowedURI.include?(refererURI)
    end if false
  end
end
