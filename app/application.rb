class Application

  def call(env)
    resp = Rack::Response.new
    req = Rack::Response.new(env)

    if req.path.match(/items/)
      item_name = req.params["item"]
      item = nil

      item = Item.items.find{|i| i.name == item_name}

      if item
        resp.write "#{item.price}"
        resp.status = 200
      else
        resp.write "Item not found"
        resp.status = 400
      end
    else
      resp.write "Route not found"
      resp.status = 404
    end

  end
end
