require 'spec_helper'

describe ForumsController do
  let(:user) do
    user = Factory(:user)
    user.confirm!
    user
  end
  let(:forum) { Factory(:forum) }

  context "standard users" do
    { "new" => "get", "create" => "post", "update" => "put",
     "edit" => "get", "destroy" => "delete"}.each do |action, method|
      it "cannot access the new action" do
        sign_in(:user, user)
        send(method, action.dup, id: forum.id)
        response.should redirect_to(root_path)
        flash[:alert].should eql("You must be an admin to do that.")
      end
    end
  end

  it "displays an error for a missing forum" do
    get :show, id: "not-here"
    response.should redirect_to(forums_path)
    message = "The forum you were looking for could not be found."
    flash[:alert].should eql(message)
  end

end
