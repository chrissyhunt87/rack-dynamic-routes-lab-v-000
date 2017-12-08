class Application

  def call(env)
    resp = Rack::Response.new
    req = Rack::Request.new(env)

    if req.path.match(/items/)
      item_name = req.params["item"]
      binding.pry
      item = Item.all.find{|i| i.name == item_name}

      if !item
        resp.write "Item not found"
        resp.status = 400
      elsif item
        resp.write "#{item.price}"
        resp.status = 200
      end
    else
      resp.write "Route not found"
      resp.status = 404
    end

  end
end
