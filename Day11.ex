defmodule Usa do
  def render(message) do
    IO.inspect(message)
  end
end
defmodule Conn do
  defstruct conn: nil
end

defmodule Manjari do
  def show(conn, obj) do

    Usa.render(obj)
  end
end




defmodule Saturday do
  def sat do
    phone = %Conn{conn: "connected"}
    Manjari.show(phone, %{obj: "god"})
  end
end
Saturday.sat()
