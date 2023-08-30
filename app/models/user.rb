class User < ApplicationRecord
  def self.hello
    User.all.each do |user|
      Rails.logger.info "Hello, #{user.name}!! #{Time.zone.now}"
    end
  end
end
