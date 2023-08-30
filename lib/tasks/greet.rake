namespace :greet do
  task say_hello: :environment do
    puts "Hello"
  end
end
