class SessionsController < ApplicationController

	def new
		@user = User.new
	end

	def authenticate!
		session[:access_token]
	end

	def authenticated?
		session
	end

 def callback
session_code = request.env['rack.request.query_hash']['code']

	client_id_key = ENV["CLIENT_ID"]
	client_secret_key = ENV["CLIENT_SECRET"]


	# ... and POST it back to GitHub
	result = RestClient.post('https://github.com/login/oauth/access_token',{:client_id => client_id_key,:client_secret => client_secret_key,:code => session_code},:accept => :json)

	#  extract the token and granted scopes
	session[:access_token] = JSON.parse(result)['access_token']
	redirect_to '/oauth'
 end

	def oauth
		access_token = session[:access_token]
		auth_result = RestClient.get('https://api.github.com/user',{:params => {:access_token => access_token},:accept => :json})

		auth_result = JSON.parse(auth_result)
		auth_result['private_emails'] = JSON.parse(RestClient.get('https://api.github.com/user/emails',{:params => {:access_token => access_token},:accept => :json}))

		@user = User.find_by_email(auth_result['private_emails'][0]['email'])

		if !@user.present?
			@user= User.create(name: auth_result["name"], email: auth_result['private_emails'][0]['email'] ,password:'Oauth',password_confirmation: 'Oauth' )
		end
		puts @user
		session[:user_id] = @user.id
	redirect_to menu_index_path, notice: "Logged in!"
	end

	def create
		user = User.find_by(email: params[:email])
		if user && user.authenticate(params[:password])
			session[:user_id] = user.id
			if session[:redirect_url]
				redirect_url = session[:redirect_url]
				session[:redirect_url] = nil
				redirect_to redirect_url
			else
				redirect_to menu_index_path, notice: "Logged in!"
			end
		else
			flash.now[:alert] = ["Login failed, name and/or password are incorrect"]
			render :new
		end
	end

	def destroy
		session[:user_id] = nil
		session[:access_token] = nil
		redirect_to root_path, notice: "Logged out!"
	end
end
