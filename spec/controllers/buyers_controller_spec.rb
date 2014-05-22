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

describe BuyersController do

  # This should return the minimal set of attributes required to create a valid
  # Buyer. As you add validations to Buyer, be sure to
  # update the return value of this method accordingly.
  def valid_attributes
    { "first_name" => "MyString" }
  end

  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # BuyersController. Be sure to keep this updated too.
  def valid_session
    {}
  end

  describe "GET index" do
    it "assigns all buyers as @buyers" do
      buyer = Buyer.create! valid_attributes
      get :index, {}, valid_session
      assigns(:buyers).should eq([buyer])
    end
  end

  describe "GET show" do
    it "assigns the requested buyer as @buyer" do
      buyer = Buyer.create! valid_attributes
      get :show, {:id => buyer.to_param}, valid_session
      assigns(:buyer).should eq(buyer)
    end
  end

  describe "GET new" do
    it "assigns a new buyer as @buyer" do
      get :new, {}, valid_session
      assigns(:buyer).should be_a_new(Buyer)
    end
  end

  describe "GET edit" do
    it "assigns the requested buyer as @buyer" do
      buyer = Buyer.create! valid_attributes
      get :edit, {:id => buyer.to_param}, valid_session
      assigns(:buyer).should eq(buyer)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "creates a new Buyer" do
        expect {
          post :create, {:buyer => valid_attributes}, valid_session
        }.to change(Buyer, :count).by(1)
      end

      it "assigns a newly created buyer as @buyer" do
        post :create, {:buyer => valid_attributes}, valid_session
        assigns(:buyer).should be_a(Buyer)
        assigns(:buyer).should be_persisted
      end

      it "redirects to the created buyer" do
        post :create, {:buyer => valid_attributes}, valid_session
        response.should redirect_to(Buyer.last)
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved buyer as @buyer" do
        # Trigger the behavior that occurs when invalid params are submitted
        Buyer.any_instance.stub(:save).and_return(false)
        post :create, {:buyer => { "first_name" => "invalid value" }}, valid_session
        assigns(:buyer).should be_a_new(Buyer)
      end

      it "re-renders the 'new' template" do
        # Trigger the behavior that occurs when invalid params are submitted
        Buyer.any_instance.stub(:save).and_return(false)
        post :create, {:buyer => { "first_name" => "invalid value" }}, valid_session
        response.should render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      it "updates the requested buyer" do
        buyer = Buyer.create! valid_attributes
        # Assuming there are no other buyers in the database, this
        # specifies that the Buyer created on the previous line
        # receives the :update_attributes message with whatever params are
        # submitted in the request.
        Buyer.any_instance.should_receive(:update_attributes).with({ "first_name" => "MyString" })
        put :update, {:id => buyer.to_param, :buyer => { "first_name" => "MyString" }}, valid_session
      end

      it "assigns the requested buyer as @buyer" do
        buyer = Buyer.create! valid_attributes
        put :update, {:id => buyer.to_param, :buyer => valid_attributes}, valid_session
        assigns(:buyer).should eq(buyer)
      end

      it "redirects to the buyer" do
        buyer = Buyer.create! valid_attributes
        put :update, {:id => buyer.to_param, :buyer => valid_attributes}, valid_session
        response.should redirect_to(buyer)
      end
    end

    describe "with invalid params" do
      it "assigns the buyer as @buyer" do
        buyer = Buyer.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        Buyer.any_instance.stub(:save).and_return(false)
        put :update, {:id => buyer.to_param, :buyer => { "first_name" => "invalid value" }}, valid_session
        assigns(:buyer).should eq(buyer)
      end

      it "re-renders the 'edit' template" do
        buyer = Buyer.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        Buyer.any_instance.stub(:save).and_return(false)
        put :update, {:id => buyer.to_param, :buyer => { "first_name" => "invalid value" }}, valid_session
        response.should render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested buyer" do
      buyer = Buyer.create! valid_attributes
      expect {
        delete :destroy, {:id => buyer.to_param}, valid_session
      }.to change(Buyer, :count).by(-1)
    end

    it "redirects to the buyers list" do
      buyer = Buyer.create! valid_attributes
      delete :destroy, {:id => buyer.to_param}, valid_session
      response.should redirect_to(buyers_url)
    end
  end

end
