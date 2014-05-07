class Tracker

  def get_projects
    response = connection.get
    JSON.parse(response.body)
  end


  private
  def connection
    Faraday::Connection.new(
        :url => 'https://www.pivotaltracker.com/services/v5/projects',
        :headers => {:accept => 'application/json',
                     "X-TrackerToken" => "API TOKEN"}) do |builder|
      builder.adapter Faraday.default_adapter
    end
  end
end
