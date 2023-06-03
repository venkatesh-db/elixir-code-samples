my_routine_work = ['study', 'clean', 'cook', 'sleep']
tv = %{TV9: "songs", sakshi: "news" }
tuple = {"happy", "cool"}
IO.puts(my_routine_work)
elem(tuple, 0)
IO.puts(tv[:TV9])
tv = Map.put(tv , :course, "elixir")
tv = Map.put(tv, :b, 2)
#IO.puts(tv)
IO.inspect(tv)

defmodule Smiling do
  defp talk(time, l) do
    IO.puts(time)
    IO.puts(l)
  end
  def smile(x, lazy \\"sleepy") do
    talk(x, lazy)
  end
end
Smiling.smile("10AM")

IO.puts Enum.each([1,2,3,4], fn(x)-> IO.puts(x) end)
smiling = fn
{:happiness, smile} -> IO.puts("50 times smile in a day")
{:happiness, _} -> IO.puts("20 times smile in a day")
end
smile = 1
smiling.({:happiness, ""})
smiling.({:happiness, smile})

defmodule Module do
  def fucntion1(message) do
    IO.puts(message)
  end
end
Module.function1("hello")

IO.puts Enum.each(["manjari", "sravya"], fn(x) -> IO.puts(x) end)
holiday = fn
{:festival, when} -> IO.puts("Today is the festival")
end
when = "today"
holiday.({:festival, when})#executing function in different ways

pid = spawn(Module, :function1, ["Hi"]) #spawn function also executes
Module.function1("hello")
