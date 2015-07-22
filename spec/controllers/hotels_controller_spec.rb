
require 'spec_helper'

RSpec.describe HotelsController, type: :controller do

  context "when user not logged in" do
    describe "GET #index" do
      it "redirects to login page" do
        get :index
        expect(response).to redirect_to new_user_session_path
      end
    end
  end

  context "when user logged in" do
    let(:user) { FactoryGirl.create(:user)}
    subject { FactoryGirl.create(:hotel)}
    
    before do
      sign_in user
    end
  
  describe "GET #index" do
    it "assigns the requested hotel to new hotel" do
      get :index
      expect(assigns(:hotels)).to eq([subject])
    end

    it "renders the :index view" do
      get :index
      expect(response).to render_template :index
    end
  end


  describe "GET #new" do
    it "assigns the requested hotel to new hotel" do
      get :new
      expect(assigns(:hotel)).to be_new_record
    end
   
    it "renders the :new view" do
      get :new 
      expect(response).to render_template :new
    end
  end

  describe "GET #show" do
    it "assigns the request hotel to subject" do
      get :show, id: subject
      expect(assigns(:hotel)).to eq(subject)
    end

    it "renders the :show view" do
      get :show, id: subject
      expect(response).to render_template :show
    end
  end
 
    describe "GET #edit" do
    it "assigns the request hotel to subject" do
      get :edit, id: subject
      expect(assigns(:hotel)).to eq(subject)
    end

    it "renders the :edit view" do
      get :edit, id: subject
      expect(response).to render_template :edit
    end
  end

  describe "DELETE #destroy" do
     before(:each) { @hotel = FactoryGirl.create :hotel}

    it "deletes the hotel" do
      expect{
        delete :destroy, id: @hotel
      }.to change(Hotel, :count).by(-1)
    end

    it "redirects to index" do
      delete :destroy, id: @hotel
      expect(response).to redirect_to hotels_path 
    end
  end

  end
end

