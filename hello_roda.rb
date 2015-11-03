require "roda"

class HelloRoda < Roda
plugin :render
plugin :head
plugin :status_handler

  route do |r|
    r.root do
      view("hello")
    end

    r.get 'about' do
      view("about")
    end
  end

  status_handler(404) do
    "Where did you go, buddy? This is a 4oh4!"
  end
end
