namespace :user do
  desc 'Create new user'
  task :create, [:first_name, :last_name,  :email, :password] =>
                :environment do |task, args|
    begin
      User.create!(first_name: args[:first_name],
                   last_name: args[:last_name],
                   email: args[:email],
                   password: args[:password],
                   password_confirmation: args[:password])

      puts "Welcome #{args[:first_name]} #{args[:last_name]}"
    rescue => ex
      puts ex.message
    end
  end
end
