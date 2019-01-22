class ProductsController < ApplicationController
  
  before_action :set_product, only: [:show, :edit, :update, :destroy]

  require 'date'

  def get_availability(var)
    @histories = History.all

    brojac = 0

    n = Time.now
    if n.month == 1
      d = Time.gm(n.year, n.month, n.day)
    else
      d = Time.gm(n.year, n.month - 1, n.day)
    end
    
    previous_month = d.strftime("%m")

    History.all.each do |histories|
      if histories.product_id == var
        if histories.date.strftime("%m") == previous_month
          brojac += histories.quantity
        end
      end
    end
    return brojac
  end
  helper_method :get_availability
 

  # GET /products
  # GET /products.json
  def index
    @products = Product.all
  end

  # GET /products/1
  # GET /products/1.json
  def show
      @products = Product.all
      
  end

 
  def show_all
      @products = Product.all
  end

    def show_picked
      @products = Product.all
  end
  def add_to_cart
#imat cemo listu proizvoda kao globalnu varijablu i tu dodavat proizvode koje prosljedjujemo 
#iz show i te proizvode cemo prikazivati u show_all
      #@cproduct = Product.find_by_id(params[:id])
      #$products_in_cart.push(@cproduct)
      @products = Product.all
      @cart = Cart.create(user_id: params[:user_id], product_id: params[:id], quantity: '1')
      #$carts.push(@cart)
      
  end
  
  # GET /products/new
  def new
    @product = Product.new
  end

  # GET /products/1/edit
  def edit
  end

  # POST /products
  # POST /products.json
  def create
    @product = Product.new(product_params)
    # @product.image = params[:file] # Assign a file like this, or
    # @product.save!
    # @product.image.url # => '/url/to/file.png'
    # @product.image.current_path # => 'path/to/file.png'
    # @product.image_identifier # => 'file.png'


    respond_to do |format|
      if @product.save
        format.html { redirect_to @product, notice: 'Product was successfully created.' }
        format.json { render :show, status: :created, location: @product }
      else
        format.html { render :new }
        format.json { render json: @product.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /products/1
  # PATCH/PUT /products/1.json
  def update
    respond_to do |format|
      if @product.update(product_params)
        format.html { redirect_to @product, notice: 'Product was successfully updated.' }
        format.json { render :show, status: :ok, location: @product }
      else
        format.html { render :edit }
        format.json { render json: @product.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /products/1
  # DELETE /products/1.json
  def destroy
    @product.destroy
    respond_to do |format|
      format.html { redirect_to products_url, notice: 'Product was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_product
      @product = Product.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def product_params
      params.require(:product).permit(:name, :description, :availability, :code, :price, :image, :quantity)
    end
end
