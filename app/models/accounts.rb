class Accounts < ActiveRecord::Base
  attr_accessible :country, :state,:city,:address,:first_name,:last_name,:user_id
  

  def self.addprofile(params,id)
  	/b=session=>[:session_user_id]/
  	user=self.exists?(user_id: id)
    if(user)
      a=Accounts.find_by_user_id(id)
      a.country=params[:Country]
      a.state=params[:State]
      a.city=params[:City]
      a.address=params[:Address]
      a.save
      /return "if"/
    else
  	   b=Accounts.new('country' =>params[:Country],'state' =>params[:State],'city' =>params[:City],'address' =>params[:Address],'first_name' =>"ali",'last_name' =>"",'user_id'=>"10")
  	   b.save
       /return "else"/
    end
  end

  def self.getvalues(id)
  		user=Accounts.where(user_id: id).first
  	return user
  end

end
