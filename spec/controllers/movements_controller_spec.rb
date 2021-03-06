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

describe MovementsController do

  # This should return the minimal set of attributes required to create a valid
  # Movement. As you add validations to Movement, be sure to
  # adjust the attributes here as well.
  let(:valid_attributes) { { "name" => "MyString", "description" => "This is  a description." } }

  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # MovementsController. Be sure to keep this updated too.
  let(:valid_session) { {} }

  describe "GET index" do
    it "assigns all movements as @movements" do
      movement = Movement.create! valid_attributes
      get :index, {}, valid_session
      assigns(:movements).should eq([movement])
    end
  end

  describe "GET show" do
    it "assigns the requested movement as @movement" do
      movement = Movement.create! valid_attributes
      get :show, {:id => movement.to_param}, valid_session
      assigns(:movement).should eq(movement)
    end
  end

  describe "GET new" do
    it "assigns a new movement as @movement" do
      get :new, {}, valid_session
      assigns(:movement).should be_a_new(Movement)
    end
  end

  describe "GET edit" do
    it "assigns the requested movement as @movement" do
      movement = Movement.create! valid_attributes
      get :edit, {:id => movement.to_param}, valid_session
      assigns(:movement).should eq(movement)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "creates a new Movement" do
        expect {
          post :create, {:movement => valid_attributes}, valid_session
        }.to change(Movement, :count).by(1)
      end

      it "assigns a newly created movement as @movement" do
        post :create, {:movement => valid_attributes}, valid_session
        assigns(:movement).should be_a(Movement)
        assigns(:movement).should be_persisted
      end

      it "redirects to the created movement" do
        post :create, {:movement => valid_attributes}, valid_session
        response.should redirect_to(Movement.last)
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved movement as @movement" do
        # Trigger the behavior that occurs when invalid params are submitted
        Movement.any_instance.stub(:save).and_return(false)
        post :create, {:movement => { "name" => "invalid value" }}, valid_session
        assigns(:movement).should be_a_new(Movement)
      end

      it "re-renders the 'new' template" do
        # Trigger the behavior that occurs when invalid params are submitted
        Movement.any_instance.stub(:save).and_return(false)
        post :create, {:movement => { "name" => "invalid value" }}, valid_session
        response.should render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      it "updates the requested movement" do
        movement = Movement.create! valid_attributes
        # Assuming there are no other movements in the database, this
        # specifies that the Movement created on the previous line
        # receives the :update_attributes message with whatever params are
        # submitted in the request.
        Movement.any_instance.should_receive(:update).with({ "name" => "MyString" })
        put :update, {:id => movement.to_param, :movement => { "name" => "MyString" }}, valid_session
      end

      it "assigns the requested movement as @movement" do
        movement = Movement.create! valid_attributes
        put :update, {:id => movement.to_param, :movement => valid_attributes}, valid_session
        assigns(:movement).should eq(movement)
      end

      it "redirects to the movement" do
        movement = Movement.create! valid_attributes
        put :update, {:id => movement.to_param, :movement => valid_attributes}, valid_session
        response.should redirect_to(movement)
      end
    end

    describe "with invalid params" do
      it "assigns the movement as @movement" do
        movement = Movement.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        Movement.any_instance.stub(:save).and_return(false)
        put :update, {:id => movement.to_param, :movement => { "name" => "invalid value" }}, valid_session
        assigns(:movement).should eq(movement)
      end

      it "re-renders the 'edit' template" do
        movement = Movement.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        Movement.any_instance.stub(:save).and_return(false)
        put :update, {:id => movement.to_param, :movement => { "name" => "invalid value" }}, valid_session
        response.should render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested movement" do
      movement = Movement.create! valid_attributes
      expect {
        delete :destroy, {:id => movement.to_param}, valid_session
      }.to change(Movement, :count).by(-1)
    end

    it "redirects to the movements list" do
      movement = Movement.create! valid_attributes
      delete :destroy, {:id => movement.to_param}, valid_session
      response.should redirect_to(movements_url)
    end
  end

end
