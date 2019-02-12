# This seed data will not work without a valid ProPublica API Key

def get_rep_from_api
##
 api_url = "https://api.propublica.org/congress/v1/116/house/members.json"
 response_string = RestClient::Request.execute(
    :method => :get,
    :url => api_url,
    #version: v1,
    :headers => {"X-API-Key" => ENV['PRO_PUBLICA_API_KEY']}
  )
  response_hash = JSON.parse(response_string)
end


def update_house
  get_rep_from_api["results"][0]["members"].each do |rep|
    Representative.create(
      pp_id: rep["id"],
      date_of_birth: rep["date_of_birth"],
      gender: rep["gender"],
      leadership_role: rep["leadership_role"],
      twitter_account: rep["twitter_account"],
      facebook_account: rep["facebook_account"],
      youtube_account: rep["youtube_account"],
      url: rep["url"],
      seniority: rep["seniority"],
      next_election: rep["next_election"],
      total_votes: rep["total_votes"],
      missed_votes: rep["missed_votes"],
      total_present: rep["total_present"],
      office: rep["office"],
      phone: rep["phone"],
      fax: rep["fax"],
      state_rank: rep["state_rank"],
      missed_votes_pct: rep["missed_votes_pct"],
      short_title: rep["short_title"],
      first_name: rep["first_name"],
      middle_name: rep["middle_name"],
      last_name: rep["last_name"],
      suffix: rep["suffix"],
      party: rep["party"],
      in_office: rep["in_office"],
      state: rep["state"],
      votes_with_party_pct: rep["votes_with_party_pct"],
      district: rep["district"]
    )
  end
end

puts "deleting..."
Representative.delete_all
puts "updating..."
update_house
puts "all house reps updated!"
