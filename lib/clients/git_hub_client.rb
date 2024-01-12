class GitHubClient

  require 'octokit'

  ROOT_ENDPOINT = 'https://api.github.com'

  def initialize
    @octokit_client = setup_octokit_client
  end

  def create_gist(params)
    begin
      gist = @octokit_client.create_gist(params)
      { success: true, gist: gist, status: @octokit_client.last_response }
    rescue Octokit::Error => e
      { success: false, error_message: e.message }
    end
  end

  private

  def setup_octokit_client
    Octokit::Client.new(access_token: ENV['GITHUB_TOKEN'])
  end
end
