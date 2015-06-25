class InvoicesController < ApplicationController
  
  respond_to :json
  
  def new
  	@invoice = Invoice.new
  end

  def create
  	@invoice =	Invoice.new(invoice_params)
  	@invoice.save
  end


  def show
  	@invoice =Invoice.find(params[:id])
  end

  def index
  	@invoices = Invoice.all
  	respond_with @invoices
  end

  private
  def invoice_params
  	params.require(:invoice).permit(:no)
  end
end
