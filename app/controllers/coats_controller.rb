class CoatsController < ApplicationController
  before_action :set_coat, only: [:show, :edit, :update, :destroy]

  # GET /coats
  # GET /coats.json
  def index
    @coats = Coat.all
  end

 def sell_sum
  x=0
  @coats.each do |coat|  
  
  x= x + coat.sell 
  end

 end
  
  
  
  # GET /coats/1
  # GET /coats/1.json
  def show
  end


  # GET /coats/new
  def new
    @coat = Coat.new
  end

  # GET /coats/1/edit
  def edit
  end

  # POST /coats
  # POST /coats.json
  def create
    @coat = Coat.new(coat_params)

    respond_to do |format|
      if @coat.save
        format.html { redirect_to @coat, notice: 'Coat was successfully created.' }
        format.json { render :show, status: :created, location: @coat }
      else
        format.html { render :new }
        format.json { render json: @coat.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /coats/1
  # PATCH/PUT /coats/1.json
  def update
    respond_to do |format|
      if @coat.update(coat_params)
        format.html { redirect_to @coat, notice: 'Coat was successfully updated.' }
        format.json { render :show, status: :ok, location: @coat }
      else
        format.html { render :edit }
        format.json { render json: @coat.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /coats/1
  # DELETE /coats/1.json
  def destroy
    @coat.destroy
    respond_to do |format|
      format.html { redirect_to coats_url, notice: 'Coat was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_coat
      @coat = Coat.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def coat_params
      params.require(:coat).permit(:name, :price, :sell, :stock, :date, :info)
    end
end
