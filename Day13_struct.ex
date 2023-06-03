defmodule Manjari do
  def morning(breakfast, lunch) do
    if is_bitstring(breakfast) === true do
      IO.puts("it's a string")
    end#type validation
    if breakfast == "idli"  do #data validation
      ret = make_idli(breakfast) # passing the data to other function
      IO.puts(ret)
      if ret == nil do
        throw("value is empty")
      end
      ret1 = transformation(ret)
      IO.puts(ret1)

    end
  end
  defstruct breakfast: nil, lunch: nil

  def make_idli(breakfast) do
    obj = %Manjari{breakfast: breakfast}
    obj.breakfast
  end

  def transformation(tiffin) do
    if tiffin == "idli" do
      obj = %Manjari{breakfast: "cheese_idli"}
      obj.breakfast
    end
  end
end
Manjari.morning("idli", "dal")
