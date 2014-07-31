require 'spec_helper'

describe UserController do

  describe "GET 'new'" do
    it "returns http success" do
      get 'new'
      response.should be_success
    end
  end

  describe "GET 'girls'" do
    it "returns http success" do
      get 'girls'
      response.should be_success
    end
  end

  describe "GET 'boys'" do
    it "returns http success" do
      get 'boys'
      response.should be_success
    end
  end

end
