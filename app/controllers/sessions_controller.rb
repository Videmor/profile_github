class SessionsController < ApplicationController
  def new
    # logger.info request.env["omniauth.auth"]
    binding.pry
    redirect_to root_path
    provider  = request.env["omniauth.auth"]["provider"]
    token     = request.env["omniauth.auth"]["credentials"]["token"]
    client = Octokit::Client.new :access_token => token

    user = client.user

    logger.info token
    logger.info client.inspect
    logger.info "REPOS"
    logger.info client.repos.inspect
    logger.info "FIN REPOS"
    logger.info user.login
    # session
    # provider
    # token
    # secret
    # if params[:provider] =~ /Github/

    # end
  end
end
