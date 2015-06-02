class StaticPagesController < ApplicationController
  def home
  	@q = Landholding.ransack(params[:q])
	@landholdings = @q.result.paginate(:page => params[:page], :per_page => 10)
  end

  def admin_panel
    @users = User.paginate(:page => params[:page], :per_page => 30)
  end

  def search
	home
	render :home
  end
end
