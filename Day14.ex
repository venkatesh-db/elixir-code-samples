#implementing behavior
defmodule Course do
  @callback trainer(course_name:: BitString):: nil

end
defmodule Name do
  @behaviour Course
  def trainer(course_name) do
    IO.puts(course_name)
  end
end
#Name.trainer("elixir")
#typespec
defmodule Evening do
  @type makeup:: {Integer, BitString}
  @spec wedding(gift:: BitString, food:: BitString):: makeup  #function declarartion
  def wedding(gift, food) do
    {10, "foundation"}
  end
end

{time, product}= Evening.wedding("smile","biryani")
#IO.puts(time)
#IO.puts(product)

#Macro is a substitution
defmodule Climate do
  defmacro __using__(opts) do
    quote do
      def fall do
        "fall season"
      end
    end
  end
end
defmodule Season do
  use Climate   #callback micro
  def manjari do
    fall
  end
end
IO.puts Season.manjari()
