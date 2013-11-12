require 'spec_helper'

describe StaticPagesController do

  describe "GET 'index'" do
    it "returns http success" do
      get 'index'
      response.should be_success
    end
  end

  describe "GET 'venue'" do
    it "returns http success" do
      get 'venue'
      response.should be_success
    end
  end

  describe "GET 'getting_there'" do
    it "returns http success" do
      get 'getting_there'
      response.should be_success
    end
  end

  describe "GET 'barcelona'" do
    it "returns http success" do
      get 'barcelona'
      response.should be_success
    end
  end

end
