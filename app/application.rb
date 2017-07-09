class Application

 @@item = [Item.new("iPhone", 800), Item.new("iPad", 900)]

 def call(env)
  resp = Rack::Response.new
  req = Rack::Request.new(env)

  if req.path.match(/items/)
   resp.write item.price
  else
   resp.write "Route not found"
   resp.status = 404
  end


  resp.finish
 end

end
