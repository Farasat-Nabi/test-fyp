class ProfileController < ApplicationController

  def profile
  	@user=Accounts.getvalues(10)
  end

  def addprofile
  	Accounts.addprofile(params,10)
  	render :text=> "done"
  end

  def addinfo
  	@user=Accounts.getvalues(10)
  	render'profile'
  end
end
