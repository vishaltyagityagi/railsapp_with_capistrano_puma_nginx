class PadawansController < ApplicationController
  before_action :set_padawan, only: [:show, :edit, :update, :destroy]

  # GET /padawans
  # GET /padawans.json
  def index
    @padawans = Padawan.all
  end

  # GET /padawans/1
  # GET /padawans/1.json
  def show
  end

  # GET /padawans/new
  def new
    @padawan = Padawan.new
  end

  # GET /padawans/1/edit
  def edit
  end

  # POST /padawans
  # POST /padawans.json
  def create
    @padawan = Padawan.new(padawan_params)

    respond_to do |format|
      if @padawan.save
        format.html { redirect_to @padawan, notice: 'Padawan was successfully created.' }
        format.json { render :show, status: :created, location: @padawan }
      else
        format.html { render :new }
        format.json { render json: @padawan.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /padawans/1
  # PATCH/PUT /padawans/1.json
  def update
    respond_to do |format|
      if @padawan.update(padawan_params)
        format.html { redirect_to @padawan, notice: 'Padawan was successfully updated.' }
        format.json { render :show, status: :ok, location: @padawan }
      else
        format.html { render :edit }
        format.json { render json: @padawan.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /padawans/1
  # DELETE /padawans/1.json
  def destroy
    @padawan.destroy
    respond_to do |format|
      format.html { redirect_to padawans_url, notice: 'Padawan was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_padawan
      @padawan = Padawan.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def padawan_params
      params.require(:padawan).permit(:name)
    end
end
