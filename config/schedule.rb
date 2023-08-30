# Rails.rootを使用するために必要
require File.expand_path(File.dirname(__FILE__) + "/environment")
# これが必要
ENV.each { |k, v| env(k, v) }

# Example:
#
# cronを実行する環境変数
rails_env = ENV['RAILS_ENV'] || :development
set :environment, rails_env
# cronのログの吐き出し場所
set :output, "#{Rails.root}/log/cron.log"
#
# every 2.hours do
#   command "/usr/bin/some_great_command"
#   runner "MyModel.some_method"
#   rake "some:great:rake:task"
# end
#
every 1.minute do
  runner 'User.hello'
end

every 1.minute do
  rake 'greet:say_hello'
end

# Learn more: http://github.com/javan/whenever
