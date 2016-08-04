class Application

  def call(env)
    resp = Rack::Response.new

    time_now = Time.now
    resp.write "#{time_now.hour}"
    resp.write " : #{time_now.min}"
    resp.write " : #{time_now.sec}\n" 

    resp.finish
  end

end
