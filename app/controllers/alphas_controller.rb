class AlphasController < ApplicationController
  before_action :set_alpha, only: [:show, :edit, :update, :destroy]

  # GET /alphas
  # GET /alphas.json
  def index
    @alphas = Alpha.all
  end

  # GET /alphas/1
  # GET /alphas/1.json
  def show
  end

  # GET /alphas/new
  def new
    @alpha = Alpha.new
  end

  # GET /alphas/1/edit
  def edit
  end

  # POST /alphas
  # POST /alphas.json
  def create
    @alpha = Alpha.new(alpha_params)

    respond_to do |format|
      if @alpha.save
        format.html { redirect_to @alpha, notice: 'Alpha was successfully created.' }
        format.json { render :show, status: :created, location: @alpha }
      else
        format.html { render :new }
        format.json { render json: @alpha.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /alphas/1
  # PATCH/PUT /alphas/1.json
  def update
    respond_to do |format|
      if @alpha.update(alpha_params)
        format.html { redirect_to @alpha, notice: 'Alpha was successfully updated.' }
        format.json { render :show, status: :ok, location: @alpha }
      else
        format.html { render :edit }
        format.json { render json: @alpha.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /alphas/1
  # DELETE /alphas/1.json
  def destroy
    @alpha.destroy
    respond_to do |format|
      format.html { redirect_to alphas_url, notice: 'Alpha was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_alpha
      @alpha = Alpha.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def alpha_params
      params[:alpha]
    end
end
