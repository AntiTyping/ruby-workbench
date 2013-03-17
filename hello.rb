class Dave
  def hello
    puts "hello"
  end
end

def np
  Dave
end

class Fred < np

end

Fred.new.hello
