defmodule Manjari do
  def morning(breakfast, lunch) do
    if is_bitstring(breakfast) === true do
      IO.puts("it's a string")
    end#type validation
    if breakfast == "idli"  do #data validation
      ret = make_idli(breakfast) # passing the data to other function
      if ret == nil do
        throw("value is empty")
      end
      ret1 = transformation(ret)
      IO.puts(ret1)

    end
  end
  def make_idli(breakfast) do
    breakfast #returning the data to other
  end
  def transformation(lunch) do
    if lunch == "idli" do
      lunch = "cheese_idli"

    end
  end
end
#Manjari.morning("idli", "dal")
defmodule API do # we only have to write 27-36 line in phoenix
  def accept(request, obj) do
    ignore(request)
  end
  def ignore(request) do
    if request.url == "hello" do
      IO.inspect(request.url)
    end
  end
end

defmodule Request do# In phoenix, phoenix writes this structure
  defstruct url: nil
end
defmodule Main do
  def main do
    object = %Request{url: "hello"}
    API.accept(object, [1])

  end
end
Main.main()
