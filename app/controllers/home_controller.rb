class HomeController < ApplicationController
  CLIENT_ID = 'a6c7bfadff7be839d044'
  CLIENT_SECRET = '5bb76a3f5a2a5a01f8e0b68f649ecc453d8d97a7'
  def index
    @client = Octokit::Client.new :login => 'videmor', :password => ''
    @app = Octokit::Client.new client_id: CLIENT_ID, client_secret: CLIENT_SECRET
  end
end
