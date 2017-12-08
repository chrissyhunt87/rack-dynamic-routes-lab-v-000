class Application

  def call(env)
    resp = Rack::Response.new
    req = Rack::Response.new(env)
  end

  if req.path.match(/items/)
  else
    resp.write "Path Not Found"
  end
end
