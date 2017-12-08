class Application

  def call(env)
    resp = Rack::Response.new
    req = Rack::Response.new(env)

    if req.path.match(/items/)
      item = req.params["item"]
      if Item.items.includes?("#{item.name}")
        
    else
      resp.write "Route not found"
      resp.status = 404
    end

  end
end
