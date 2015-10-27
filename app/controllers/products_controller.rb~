class ProductsController < ApplicationController
  before_action :set_product, only: [:show, :edit, :update, :destroy]
def index
  @products = Product.all
  if params[:search]
    @products = Product.search(params[:search]).order("created_at DESC")
  else
    @products = Product.all.order('created_at DESC')
  end
end
  # GET /products
  # GET /products.json
  def index
    @products = Product.all
  end

  # GET /products/1
  # GET /products/1.json
  def show
  @product_attachments = @product.product_attachments.all
  end

  # GET /products/new
  def new
    @product = Product.new
    @product_attachments = @product.product_attachments.build
  end

  # GET /products/1/edit
  def edit
  end   

  # POST /products
  # POST /products.json
  def create
    @product = Product.new(product_params)

    respond_to do |format|
      if @product.save
      params[:product_attachments]['avatar'].each do |a|
      @product_attachment = @product.product_attachments.create!(:avatar => a)
      end
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
      params.require(:product).permit(:name, :user_id, :description, :subcategory_id, :initial_price, :selling_price, :availibility, :opening_date, :closing_date,product_attachments_attributes:[:id, :product_id,:avatar])
    end
end
