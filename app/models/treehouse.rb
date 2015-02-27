class Treehouse
  include HTTParty

  def self.response
    user = "username"
    api_url = "http://teamtreehouse.com/#{user}.json"
    HTTParty.get(api_url)
  end
  
  def self.stuntdouble
    {"name"=>"Codey Coder", "profile_name"=>"codeycoder", "profile_url"=>"http://teamtreehouse.com/codeycoder", "gravatar_url"=>"https://secure.gravatar.com/avatar/xxx.png&r=pg", "gravatar_hash"=>"xxx", "badges"=>[{"id"=>49, "name"=>"Newbie", "url"=>"http://teamtreehouse.com/codeycoder", "icon_url"=>"https://wac.A8B5.edgecastcdn.net/80A8B5/achievement-images/Generic_Newbie.png", "earned_date"=>"2014-10-31T17:44:09.000Z", "courses"=>[]}, {"id"=>912, "name"=>"Beginning HTML and CSS", "url"=>"http://teamtreehouse.com/library/how-to-make-a-website/beginning-html-and-css", "icon_url"=>"https://wac.A8B5.edgecastcdn.net/80A8B5/achievement-images/badges_html_howtomakeawebsite_stage01.png", "earned_date"=>"2015-01-20T23:11:55.000Z", "courses"=>[{"title"=>"How to Make a Website", "url"=>"http://teamtreehouse.com/library/how-to-make-a-website", "badge_count"=>1}, {"title"=>"Beginning HTML and CSS", "url"=>"http://teamtreehouse.com/library/how-to-make-a-website/beginning-html-and-css", "badge_count"=>1}]}, {"id"=>922, "name"=>"HTML First", "url"=>"http://teamtreehouse.com/library/how-to-make-a-website/html-first", "icon_url"=>"https://wac.A8B5.edgecastcdn.net/80A8B5/achievement-images/bagdes_html_howtobuildawebsite_stage02.png", "earned_date"=>"2015-02-03T18:58:14.000Z", "courses"=>[{"title"=>"How to Make a Website", "url"=>"http://teamtreehouse.com/library/how-to-make-a-website", "badge_count"=>1}, {"title"=>"HTML First", "url"=>"http://teamtreehouse.com/library/how-to-make-a-website/html-first", "badge_count"=>1}]}], "points"=>{"total"=>167, "HTML"=>122, "CSS"=>15, "Design"=>0, "JavaScript"=>0, "Ruby"=>0, "PHP"=>0, "WordPress"=>0, "iOS"=>0, "Android"=>0, "Development Tools"=>0, "Business"=>0, "Python"=>0, "Java"=>0, "Digital Literacy"=>0}}
  end
end