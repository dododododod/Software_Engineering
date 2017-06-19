class RegisController < ApplicationController
  before_action :set_regi, only: [:show, :edit, :update, :destroy]

  # GET /regis
  # GET /regis.json
  def index
    @regis = Regi.all
  end

  # GET /regis/1
  # GET /regis/1.json
  def show
  end

  # GET /regis/new
  def new
    @regi = Regi.new
  end

  # GET /regis/1/edit
  def edit
  end

  # POST /regis
  # POST /regis.json
  def create
    #Regi.create( picture: params[:picture])
    @regi = Regi.new(regi_params)

    respond_to do |format|
      if @regi.save
        format.html { redirect_to @regi, notice: 'Regi was successfully created.' }
        format.json { render :show, status: :created, location: @regi }
      else
        format.html { render :new }
        format.json { render json: @regi.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /regis/1
  # PATCH/PUT /regis/1.json
  def update
    respond_to do |format|
      if @regi.update(regi_params)
        format.html { redirect_to @regi, notice: 'Regi was successfully updated.' }
        format.json { render :show, status: :ok, location: @regi }
      else
        format.html { render :edit }
        format.json { render json: @regi.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /regis/1
  # DELETE /regis/1.json
  def destroy
    @regi.destroy
    respond_to do |format|
      format.html { redirect_to regis_url, notice: 'Regi was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_regi
      @regi = Regi.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def regi_params
      params.require(:regi).permit(:title, :housetype, :address, :deposit, :monthlyfee, :picture, :description, :managementfee, :phone)
    end
    
end
