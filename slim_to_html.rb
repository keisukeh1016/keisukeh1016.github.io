require 'slim'


slim = <<TEXT

- if true 
  td.text-right.text-success= 'hello'


TEXT

puts Slim::Template.new(pretty: true) { slim }.render(self)
