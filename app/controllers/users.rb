JobVacancy::App.controllers :users do
  
  # get :index, :map => '/foo/bar' do
  #   session[:foo] = 'bar'
  #   render 'index'
  # end

  # get :sample, :map => '/sample/url', :provides => [:any, :js] do
  #   case content_type
  #     when :js then ...
  #     else ...
  # end

  # get :foo, :with => :id do
  #   'Maps to url '/foo/#{params[:id]}''
  # end

  # get '/example' do
  #   'Hello world!'
  # end
  
  get :new, map:"/login" do
    @user = User.new
    render 'new' 
  end
  post :create do
    @user = User.new(params[:user])
    if @user.save
      deliver(:registration, :registration_email, @user.name, @user.email)
      redirect('/')
    else
      render 'new'
    end
               



    
  end

end
