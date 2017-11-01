namespace :steps do
  desc "it completes tasks for user whose id = 1. Example usage: rake steps:complete[7]"

  task :complete, [:end_id] => [:environment] do |t, args|
    last_id = args[:end_id].to_i
    (1..last_id).each do |id|
      user_step = User.first.user_steps.create!(step_id: id, successfully_completed: true, userCode: 'completed by rake task')
    end

  end

end
