namespace :datas do
  desc "Reset db & recreate"
  task :reset   do
    exec(" rails db:drop &&  rails db:create &&  rails db:migrate ")
  end

  desc "Fake db & recreate"
  task :fake   do
    exec(" rails db:seed")
  end
end
