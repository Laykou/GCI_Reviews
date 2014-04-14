class Account::GciReviewsApiColorSchemesController < ApplicationController
  before_action :set_account_gci_reviews_api_color_scheme, only: [:show, :edit, :update, :destroy]

  # GET /account/gci_reviews_api_color_schemes
  # GET /account/gci_reviews_api_color_schemes.json
  def index
    @account_gci_reviews_api_color_schemes = GciReviewsApiColorScheme.all
  end

  # GET /account/gci_reviews_api_color_schemes/1
  # GET /account/gci_reviews_api_color_schemes/1.json
  def show
  end

  # GET /account/gci_reviews_api_color_schemes/new
  def new
    @account_gci_reviews_api_color_scheme = GciReviewsApiColorScheme.new
  end

  # GET /account/gci_reviews_api_color_schemes/1/edit
  def edit
  end

  # POST /account/gci_reviews_api_color_schemes
  # POST /account/gci_reviews_api_color_schemes.json
  def create
    @account_gci_reviews_api_color_scheme = GciReviewsApiColorScheme.new(account_gci_reviews_api_color_scheme_params)

    respond_to do |format|
      if @account_gci_reviews_api_color_scheme.save
        format.html { redirect_to @account_gci_reviews_api_color_scheme, notice: 'Gci reviews api color scheme was successfully created.' }
        format.json { render action: 'show', status: :created, location: @account_gci_reviews_api_color_scheme }
      else
        format.html { render action: 'new' }
        format.json { render json: @account_gci_reviews_api_color_scheme.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /account/gci_reviews_api_color_schemes/1
  # PATCH/PUT /account/gci_reviews_api_color_schemes/1.json
  def update
    respond_to do |format|
      if @account_gci_reviews_api_color_scheme.update(account_gci_reviews_api_color_scheme_params)
        format.html { redirect_to @account_gci_reviews_api_color_scheme, notice: 'Gci reviews api color scheme was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @account_gci_reviews_api_color_scheme.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /account/gci_reviews_api_color_schemes/1
  # DELETE /account/gci_reviews_api_color_schemes/1.json
  def destroy
    @account_gci_reviews_api_color_scheme.destroy
    respond_to do |format|
      format.html { redirect_to account_gci_reviews_api_color_schemes_url }
      format.json { head :no_content }
    end
  end

  private
  # Use callbacks to share common setup or constraints between actions.
  def set_account_gci_reviews_api_color_scheme
    @account_gci_reviews_api_color_scheme = GciReviewsApiColorScheme.find(params[:id])
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def account_gci_reviews_api_color_scheme_params
    params[:account_gci_reviews_api_color_scheme]
  end
end
