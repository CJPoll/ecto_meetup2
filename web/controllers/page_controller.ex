defmodule EctoMeetup.PageController do
  use EctoMeetup.Web, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end
