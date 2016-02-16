class AccountsController < ApplicationController
	def index
		@accounts = Customer.all
	end

	def show
		@account = Account.find(params[:id])
	end
	def create
		a = Account.create(params.require(:account).permit(:name, :email, :about))
		redirect_to account_path(a)
	end
end
