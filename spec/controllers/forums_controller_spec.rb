require 'spec_helper'

describe ForumsController do

  it "displays an error for a missing forum" do
    get :show, id: "not-here"
    response.should redirect_to(forums_path)
    message = "The forum you were looking for could not be found."
    flash[:alert].should eql(message)
  end

end
