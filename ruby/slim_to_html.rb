require 'slim'

slim = <<TEXT


TEXT

puts Slim::Template.new(pretty: true) { slim }.render(self)
