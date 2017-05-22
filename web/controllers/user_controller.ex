# web/controllers/user_controller
defmodule ApiExample.UserController do
  use ApiExample.Web, :controller
  def index(conn, _params) do
    users = [
      %{name: "Joe",
        email: "joe@example.com",
        password: "topsecret",
        stooge: "moe"},
      %{name: "Anne",
        email: "anne@example.com",
        password: "guessme",
        stooge: "larry"},
      %{name: "Franklin",
        email: "franklin@example.com",
        password: "guessme",
        stooge: "curly"},
    ]
    json conn, users
  end

  def register(conn, %{"id" => id}) do
    messages = [
      %{bin: "00000010",
        id: id,
        cookie: "1111222233334444"},
    ]
    json conn, messages
  end

   def login(conn, %{"id" => id}) do
    messages = [
      %{bin: "00000100",
        result: "00000001"},
    ]
    json conn, messages
   end

    def auth(conn, %{"id" => id}) do
    messages = [
      %{bin: "00000110",
        url: "https://yt3.ggpht.com/-KdgJnz1HIdQ/AAAAAAAAAAI/AAAAAAAAAAA/4vVN7slJqj4/s900-c-k-no-mo-rj-c0xffffff/photo.jpg"},
    ]
    json conn, messages
   end
end
