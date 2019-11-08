namespace :test do
  desc "Models db & recreate"
  task :model   do
    exec("rspec spec/models")
  end

  desc "Fake db & recreate"
  task :fake   do
    exec(" rails db:seed")
  end
end
