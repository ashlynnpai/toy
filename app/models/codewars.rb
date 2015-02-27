class Codewars
  include HTTParty

  def self.response
    user = "ashlynn"
    api_url = "https://www.codewars.com/api/v1/users/#{user}"
    HTTParty.get(api_url)
  end
  
  def self.stuntdouble
    {"data"=>[{"id"=>"514a6336889283a3d2000001", "name"=>"Super Cool Kata Name", "slug"=>"javascript-array-filter", "completedLanguages"=>["javascript"], "completedAt"=>"2014-06-05T00:01:16Z"}, {"id"=>"514a677421607afc99000002", "name"=>"getNames()", "slug"=>"getnames", "completedLanguages"=>["javascript"], "completedAt"=>"2014-06-04T23:28:36Z"}, {"id"=>"534d2f5b5371ecf8d2000a08", "name"=>"Multiplication table", "slug"=>"multiplication-table", "completedLanguages"=>["javascript"], "completedAt"=>"2014-06-03T15:05:18Z"}, {"id"=>"535474308bb336c9980006f2", "name"=>"Greet Me", "slug"=>"greet-me", "completedLanguages"=>["javascript"], "completedAt"=>"2014-06-03T01:18:15Z"}, {"id"=>"5356ad2cbb858025d800111d", "name"=>"Name Array Capping", "slug"=>"name-array-capping", "completedLanguages"=>["javascript"], "completedAt"=>"2014-06-03T00:48:18Z"}, {"id"=>"537922daa79ca02290000d18", "name"=>"2 + 2 * 2 problem", "slug"=>"2-plus-2-star-2-problem", "completedLanguages"=>["javascript"], "completedAt"=>"2014-06-03T00:12:05Z"}]}
  end
  
  def self.language_parse(stats, language)
    total = 0
    stats["data"].each do |item|
      item["completedLanguages"].each do |name| 
        if name == language
          total+=1
        end
      end
    end    
    return total      
  end
  
  def self.latest(stats, num)
    kata = []
    latest_ten = stats["data"].take(10)
    latest_ten.each do |item|
      kata.push(item["name"])
    end
    return kata
  end
end
