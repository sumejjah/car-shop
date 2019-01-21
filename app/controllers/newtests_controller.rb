class NewtestsController < ApplicationController
  before_action :set_newtest, only: [:show, :edit, :update, :destroy]

  # GET /newtests
  # GET /newtests.json
  def index
    @newtests = Newtest.all
  end

  # GET /newtests/1
  # GET /newtests/1.json
  def show
  end

  # GET /newtests/new
  def new
    @newtest = Newtest.new
  end

  # GET /newtests/1/edit
  def edit
  end

  # POST /newtests
  # POST /newtests.json
  def create
    @newtest = Newtest.new(newtest_params)

    respond_to do |format|
      if @newtest.save
        format.html { redirect_to @newtest, notice: 'Newtest was successfully created.' }
        format.json { render :show, status: :created, location: @newtest }
      else
        format.html { render :new }
        format.json { render json: @newtest.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /newtests/1
  # PATCH/PUT /newtests/1.json
  def update
    respond_to do |format|
      if @newtest.update(newtest_params)
        format.html { redirect_to @newtest, notice: 'Newtest was successfully updated.' }
        format.json { render :show, status: :ok, location: @newtest }
      else
        format.html { render :edit }
        format.json { render json: @newtest.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /newtests/1
  # DELETE /newtests/1.json
  def destroy
    @newtest.destroy
    respond_to do |format|
      format.html { redirect_to newtests_url, notice: 'Newtest was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_newtest
      @newtest = Newtest.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def newtest_params
      params.require(:newtest).permit(:name)
    end
end
