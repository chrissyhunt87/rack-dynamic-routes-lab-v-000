class Application

  def call(env)
    resp = Rack::Response.new
    req = Rack::Response.new(env)
  end

  if req.path.match(/items/)

  else
    resp.write "Route not found"
    resp.status = 404
  end
end
