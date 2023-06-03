#function overloading
defmodule ShapeFactory do
  #@Coderrange Elixir
  def create(:shape, area: area), do: {:shape, area}
  def create(:shape, area: area, length: length), do: {:shape, @Coderrange, length}
end
ret = ShapeFactory.create(:shape, area: 10)
c = ShapeFactory.create(:shape, area: 10, length: "15cm")

IO.inspect(c)
