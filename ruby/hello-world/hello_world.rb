require 'pry'

class HelloWorld
  def self.hello(name)
    name = "world" if name == nil || name == ""

    "Hello, #{name}!"
  end
end
