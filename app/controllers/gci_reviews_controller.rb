class GciReviewsController < ApplicationController
  before_action :must_have_api_code
  before_action :check_valid_url, only: [:box, :list, :load, :new]

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
        sort_hash = { '1' => 'created_at DESC', '2' => 'created_at ASC', '3' => 'overall_satisfaction_score DESC, created_at DESC', '4' => 'overall_satisfaction_score ASC, created_at DESC' }

        page         = params[:page] || 1
        sort         = sort_hash[params[:sort]] || sort_hash['1']
        max_per_page = @gci_reviews_api.reviews_per_page
        total_pages  = (@gci_reviews_api.gci_reviews_api_reviews.count / max_per_page).ceil
        show_from    = (page.to_i - 1)*max_per_page;
        show_to = page.to_i*max_per_page;

        list_of_reviews = @gci_reviews_api.gci_reviews_api_reviews.where(approved: true).order(sort).offset(show_from).limit(max_per_page).collect do |item|
          item.as_json(include: :country)
        end

        render json: { list: list_of_reviews, count: total_pages, page: page, showing_from: show_from + 1, showing_to: show_to }
      }
    end
  end

  # Adding new review
  def new
    respond_to do |format|
      format.json {
        response = { status: 'ok' }
        render json: response.to_json
      }
    end
  end

  private
  def must_have_api_code
    @gci_reviews_api = GciReviewsApi.find_by(api_code: params.require(:api))
  end

  # Check for correct referer - compare only domain name
  def check_valid_url
    refererURI                               = URI(request.referer.to_s).host.to_s
    allowedURI                               = @gci_reviews_api.web_page.to_s.split(',').map! { |uri| uri = URI(uri).host }

    # Allow all url
    headers['Access-Control-Allow-Origin']   = '*'
    headers['Access-Control-Request-Method'] = '*'

    respond_to do |format|
      format.all {
        render text: 'Access denied. Check your settings.'.html_safe, layout: false
      }
    end if refererURI.empty? || !allowedURI.include?(refererURI)
    #end if false
  end
end
