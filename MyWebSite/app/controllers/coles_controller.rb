class ColesController < ApplicationController
  before_action :set_cole, only: [:show, :edit, :update, :destroy]

  # GET /coles
  # GET /coles.json
  def index
    @coles = Cole.all
  end

  # GET /coles/1
  # GET /coles/1.json
  def show
  end

  # GET /coles/new
  def new
    @cole = Cole.new
  end

  # GET /coles/1/edit
  def edit
  end

  # POST /coles
  # POST /coles.json
  def create
    @cole = Cole.new(cole_params)

    respond_to do |format|
      if @cole.save
        format.html { redirect_to @cole, notice: 'Cole was successfully created.' }
        format.json { render :show, status: :created, location: @cole }
      else
        format.html { render :new }
        format.json { render json: @cole.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /coles/1
  # PATCH/PUT /coles/1.json
  def update
    respond_to do |format|
      if @cole.update(cole_params)
        format.html { redirect_to @cole, notice: 'Cole was successfully updated.' }
        format.json { render :show, status: :ok, location: @cole }
      else
        format.html { render :edit }
        format.json { render json: @cole.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /coles/1
  # DELETE /coles/1.json
  def destroy
    @cole.destroy
    respond_to do |format|
      format.html { redirect_to coles_url, notice: 'Cole was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_cole
      @cole = Cole.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def cole_params
      params.fetch(:cole, {})
    end
end
