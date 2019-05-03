defmodule GrebenshikoffWeb.PageController do
  use GrebenshikoffWeb, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end
