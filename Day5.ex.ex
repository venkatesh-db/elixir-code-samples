defmodule Hello do
  def venkatesh(dinner, breakfast) do
    IO.puts(dinner)
  end
end
pid= spawn(Hello, :venkatesh, ["chapathi", "Idli"])
IO.inspect(pid)

defmodule Office do
  def work do
    receive do
       {:ok , 'hello'} -> IO.puts("Hello again")
    end

  end

end

defmodule Example do
  def process do
    pid = spawn(Office, :work, [])
    send(pid, {:ok , 'hello'})
  end
end
Example.process()
 defmodule Sinc do
  def sync1 do
    yoga = "5am"
    sync2(yoga)
  end
  def sync2(a) do
    IO.puts(a)
  end
 end
 Sinc.sync1()
 #receive only when it is async fun, async fun only use with spawn,
 #use send function to receive data
