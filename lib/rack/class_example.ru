class HelloWorld
  def call(env)
    [200, {"Content-type" => "text/html"}, ["Hello World!"]]
  end
end

run HelloWorld.new
