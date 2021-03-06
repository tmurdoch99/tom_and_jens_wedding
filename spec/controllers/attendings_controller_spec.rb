require 'spec_helper'

# This spec was generated by rspec-rails when you ran the scaffold generator.
# It demonstrates how one might use RSpec to specify the controller code that
# was generated by Rails when you ran the scaffold generator.
#
# It assumes that the implementation code is generated by the rails scaffold
# generator.  If you are using any extension libraries to generate different
# controller code, this generated spec may or may not pass.
#
# It only uses APIs available in rails and/or rspec-rails.  There are a number
# of tools you can use to make these specs even more expressive, but we're
# sticking to rails and rspec-rails APIs to keep things simple and stable.
#
# Compared to earlier versions of this generator, there is very limited use of
# stubs and message expectations in this spec.  Stubs are only used when there
# is no simpler way to get a handle on the object needed for the example.
# Message expectations are only used when there is no simpler way to specify
# that an instance is receiving a specific message.

describe AttendingsController do

  # This should return the minimal set of attributes required to create a valid
  # Attending. As you add validations to Attending, be sure to
  # adjust the attributes here as well.
  let(:valid_attributes) { { "name" => "MyString" } }

  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # AttendingsController. Be sure to keep this updated too.
  let(:valid_session) { {} }

  describe "GET index" do
    it "assigns all attendings as @attendings" do
      attending = Attending.create! valid_attributes
      get :index, {}, valid_session
      assigns(:attendings).should eq([attending])
    end
  end

  describe "GET show" do
    it "assigns the requested attending as @attending" do
      attending = Attending.create! valid_attributes
      get :show, {:id => attending.to_param}, valid_session
      assigns(:attending).should eq(attending)
    end
  end

  describe "GET new" do
    it "assigns a new attending as @attending" do
      get :new, {}, valid_session
      assigns(:attending).should be_a_new(Attending)
    end
  end

  describe "GET edit" do
    it "assigns the requested attending as @attending" do
      attending = Attending.create! valid_attributes
      get :edit, {:id => attending.to_param}, valid_session
      assigns(:attending).should eq(attending)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "creates a new Attending" do
        expect {
          post :create, {:attending => valid_attributes}, valid_session
        }.to change(Attending, :count).by(1)
      end

      it "assigns a newly created attending as @attending" do
        post :create, {:attending => valid_attributes}, valid_session
        assigns(:attending).should be_a(Attending)
        assigns(:attending).should be_persisted
      end

      it "redirects to the created attending" do
        post :create, {:attending => valid_attributes}, valid_session
        response.should redirect_to(Attending.last)
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved attending as @attending" do
        # Trigger the behavior that occurs when invalid params are submitted
        Attending.any_instance.stub(:save).and_return(false)
        post :create, {:attending => { "name" => "invalid value" }}, valid_session
        assigns(:attending).should be_a_new(Attending)
      end

      it "re-renders the 'new' template" do
        # Trigger the behavior that occurs when invalid params are submitted
        Attending.any_instance.stub(:save).and_return(false)
        post :create, {:attending => { "name" => "invalid value" }}, valid_session
        response.should render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      it "updates the requested attending" do
        attending = Attending.create! valid_attributes
        # Assuming there are no other attendings in the database, this
        # specifies that the Attending created on the previous line
        # receives the :update_attributes message with whatever params are
        # submitted in the request.
        Attending.any_instance.should_receive(:update_attributes).with({ "name" => "MyString" })
        put :update, {:id => attending.to_param, :attending => { "name" => "MyString" }}, valid_session
      end

      it "assigns the requested attending as @attending" do
        attending = Attending.create! valid_attributes
        put :update, {:id => attending.to_param, :attending => valid_attributes}, valid_session
        assigns(:attending).should eq(attending)
      end

      it "redirects to the attending" do
        attending = Attending.create! valid_attributes
        put :update, {:id => attending.to_param, :attending => valid_attributes}, valid_session
        response.should redirect_to(attending)
      end
    end

    describe "with invalid params" do
      it "assigns the attending as @attending" do
        attending = Attending.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        Attending.any_instance.stub(:save).and_return(false)
        put :update, {:id => attending.to_param, :attending => { "name" => "invalid value" }}, valid_session
        assigns(:attending).should eq(attending)
      end

      it "re-renders the 'edit' template" do
        attending = Attending.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        Attending.any_instance.stub(:save).and_return(false)
        put :update, {:id => attending.to_param, :attending => { "name" => "invalid value" }}, valid_session
        response.should render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested attending" do
      attending = Attending.create! valid_attributes
      expect {
        delete :destroy, {:id => attending.to_param}, valid_session
      }.to change(Attending, :count).by(-1)
    end

    it "redirects to the attendings list" do
      attending = Attending.create! valid_attributes
      delete :destroy, {:id => attending.to_param}, valid_session
      response.should redirect_to(attendings_url)
    end
  end

end
