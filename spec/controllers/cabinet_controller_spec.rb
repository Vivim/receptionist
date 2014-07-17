require 'rails_helper'

RSpec.describe CabinetController, :type => :controller do

  describe "GET 'details'" do
    it "returns http success" do
      get 'details'
      expect(response).to be_success
    end
  end

end
