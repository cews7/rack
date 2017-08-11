require 'rack'

class MyRackApp
  def call(env)
    [200, { 'Content-Type' => 'text/html' }, ["<h1>First Rack app!</h1>"] ]
  end
end

@app = MyRackApp.new

Rack::Handler::Thin.run @app 
