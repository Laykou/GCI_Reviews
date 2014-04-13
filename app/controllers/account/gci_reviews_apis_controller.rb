class Account::GciReviewsApisController < SessionController
  before_action :signed_in_user
  before_action :set_gci_reviews_api, only: [:show, :edit, :update, :destroy]

  def index
    @account_gci_reviews_apis = GciReviewsApi.where(:clinic_id => current_user.clinic.id)
  end

  def show
  end

  def new
    @account_gci_reviews_api = GciReviewsApi.new
  end

  def edit
  end

  def create
    @account_gci_reviews_api = GciReviewsApi.new(gci_reviews_api_params)

    respond_to do |format|
      if @account_gci_reviews_api.save
        format.html {
          flash[:success] = 'GCI Reviews full_box was successfully created.'
          redirect_to account_gci_reviews_apis_path
        }
        format.json { render action: 'show', status: :created, location: @account_gci_reviews_api }
      else
        format.html { render action: 'new' }
        format.json { render json: @account_gci_reviews_api.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @account_gci_reviews_api.update(gci_reviews_api_params)
        format.html {
          flash[:success] = 'GCI Reviews full_box was successfully updated.'
          redirect_to account_gci_reviews_apis_path
        }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @account_gci_reviews_api.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @account_gci_reviews_api.destroy
    respond_to do |format|
      format.html { redirect_to gci_reviews_apis_url }
      format.json { head :no_content }
    end
  end

  private
  def set_gci_reviews_api
    @account_gci_reviews_api = GciReviewsApi.find(params[:id])
  end

  def gci_reviews_api_params
    params.require(:gci_reviews_api).permit(:clinic_id, :web_page, :gci_reviews_api_type_id, :gci_reviews_api_color_scheme_id, :reviews_per_page)
  end
end
