class GrocersController < ApplicationController
  before_action :set_grocer, only: [:show, :edit, :update, :destroy]
  before_action :set_items, only: [:show]
  before_action :set_order, only: [:show]
  before_action :set_cart, only: [:show]
  before_action :authenticate_user!

  # GET /grocers
  # GET /grocers.json
  def index
    @grocers = Grocer.all
  end

  # GET /grocers/1
  # GET /grocers/1.json
  def show
  end

  # GET /grocers/new
  def new
    @grocer = Grocer.new
  end

  # GET /grocers/1/edit
  def edit
  end

  # POST /grocers
  # POST /grocers.json
  def create
    @grocer = Grocer.new(grocer_params)

    respond_to do |format|
      if @grocer.save
        format.html { redirect_to @grocer, notice: 'Grocer was successfully created.' }
        format.json { render :show, status: :created, location: @grocer }
      else
        format.html { render :new }
        format.json { render json: @grocer.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /grocers/1
  # PATCH/PUT /grocers/1.json
  def update
    respond_to do |format|
      if @grocer.update(grocer_params)
        format.html { redirect_to @grocer, notice: 'Grocer was successfully updated.' }
        format.json { render :show, status: :ok, location: @grocer }
      else
        format.html { render :edit }
        format.json { render json: @grocer.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /grocers/1
  # DELETE /grocers/1.json
  def destroy
    @grocer.destroy
    respond_to do |format|
      format.html { redirect_to grocers_url, notice: 'Grocer was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_grocer
      @grocer = Grocer.find(params[:id])
    end

    def set_items
      @items = Item.where(:grocer_id => @grocer.id)
    end

    def set_order
      @order = Order.new(:Grocer_id => @grocer.id, :Client_id => current_user.id, :Order_status_id => 1)
      @order.save!
    end

    def set_cart
      @cart = Cart.new(:Order_id => @order.id)
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def grocer_params
      params.fetch(:grocer, {})
    end
end
