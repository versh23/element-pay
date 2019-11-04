namespace :datas do
  desc "TODO"
  task :reset   do
    exec(" rails db:drop &&  rails db:create &&  rails db:migrate ")
  end
end
