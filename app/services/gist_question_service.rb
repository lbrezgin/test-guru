class GistQuestionService

  def initialize(question, client: nil)
    @question = question
    @test = @question.test
    @client = client || GitHubClient.new
  end
  def call
    @client.create_gist(gist_params)
  end

  def success?
    @client.last_response_status == 201
  end

  private

  def gist_params
    {
      description: I18n.t('.app.services.gist_params.question_about', test: @test.title),
      public: true,
      files: {
        "test-guru-question.txt" => {
          content: gist_content
        }
      }
    }
  end

  def gist_content
    content = [@question.body]
    content += @question.answers.pluck(:body)
    content.join("\n")
  end
end

