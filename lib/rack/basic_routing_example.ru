class HelloWorld
  def call(env)
    req = Rack::Request.new(env)
    case req.path_info
    when /hello/
      [200, {"Content-type" => "text/html"}, ["Hello World!"]]
    when /goodbye/
      [500, {"Content-type" => "text/html"}, ["Goodbye Cruel World!"]]
    else
      [404, {"Content-type" => "text/html"}, ["I'm Lost!"]]
    end
  end
end

run HelloWorld.new
