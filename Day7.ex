defprotocol Utility do #whenever we create protocol it will automatically identifies the data based on its type
  @spec type(t) :: String.t()
  def type(value)
end

defimpl Utility, for: BitString do
  def type(_value), do: "string"
end

defimpl Utility, for: Integer do
  def type(_value), do: "integer"
end


IO.puts Utility.type("foo")
IO.puts Utility.type(1)

#Teasing.hurting(%Job{respect: 'monkey'})

defmodule Venkateshwara do
  defstruct god: nil
end

defprotocol Temple do
  def type(god)
end

defimpl Temple, for: Venkateshwara do
  def type(_god) do
    "venkateshwara"
  end
end
defimpl Temple, for: BitString do
  def type(_god) do
    "Baba"
  end
end
#object = %Venkateshwara{god: "venkateshwara"}

#IO.puts Temple.type(object)
IO.puts Temple.type("Baba")

try do
  IO.puts("try block")
  throw ("hello")
catch
  message -> "#{message}."
after
  IO.puts("not received")
end

defmodule Course do
 defexception message: "hello"

end

try do
  raise Course
rescue
  e in Course -> IO.puts(e.message)

end
try do
  raise "morning"
rescue
  e in RuntimeError -> IO.puts(e.message)

end
