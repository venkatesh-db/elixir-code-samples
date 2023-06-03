#below coode design is written by phoenix, we create object and by calling method we allocate memory
defmodule Computer do
  defstruct memory: 0, cpu: nil, drives: []
end

defmodule Computermodule do
  def build, do: %Computer{}
  def intel(computer), do: %{computer | cpu: "intel"}
  def memory(computer), do: %{computer | memory: "2GB"}
  def drives(computer), do: %{computer | drives: ["c", "d"]}
end

#developer will allocate the memory only when phoenix library has written the code
ret = Computermodule.build()
c= Computermodule.intel(ret)
m= Computermodule.memory(c)
d = Computermodule.drives(m)
IO.inspect(d)
use Create.create
create()
