require "cuba"
require "rack/protection"
require "securerandom"
require "cuba/render"

Cuba.use Rack::Session::Cookie, :secret => SecureRandom.hex(64)
Cuba.use Rack::Protection

Cuba.plugin Cuba::Render

Cuba.define do
  on get do
    on "hello" do
      res.write render("base.haml", content: "Hello world!")
    end

    on "about" do
      res.write render("base.haml", content: "This is the about page for this application.")
    end

    on root do
      res.redirect "/hello"
    end
  end
end
