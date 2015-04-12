class User < ActiveRecord::Base
  
    # Associations
  has_many :accounts, :dependent => :destroy

  # Attributes
  attr_accessible :email, :first_name, :last_name, :password, :password_confirmation

  # Instance Methods
  def has_facebook?
    accounts.where(provider: 'facebook').any?
  end

  def has_twitter?
    accounts.where(provider: 'twitter').any?
  end

  def has_foursquare?
    accounts.where(provider: 'foursquare').any?
  end
  
  
  
  def self.from_omniauth(auth)
    where(auth.slice(:provider, :uid)).first_or_initialize.tap do |user|
      user.provider = auth.provider
      user.uid = auth.uid
      user.name = auth.info.name
      user.oauth_token = auth.credentials.token
      user.oauth_expires_at = Time.at(auth.credentials.expires_at)
      user.save!
    end
  end
end
