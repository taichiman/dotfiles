p 'ActiveRecord::Base.logger = Logger.new STDOUT'
p 'Post._save_callbacks.select{|c| c.kind.eql? :before}.map(&:filter)'
p include Rails.application.routes.url_helpers
Hirb.enable

if defined?(PryByebug)
  Pry.commands.alias_command 'c', 'continue'
  Pry.commands.alias_command 's', 'step'
  Pry.commands.alias_command 'n', 'next'
  Pry.commands.alias_command 'f', 'finish'

  # Hit Enter to repeat last command
  Pry::Commands.command /^$/, "repeat last command" do
    _pry_.run_command Pry.history.to_a.last
  end
end

