defmodule Course do
  def subject(subject_name,professor ) do

    unless subject_name === "Elixir" do
      IO.puts(subject_name)
    else
      IO.puts(professor)
    end
    cond do
      professor == "Jose Valim" -> IO.puts("crazy fan of him")
      professor == "online baba" -> IO.puts("not fan")
    end
    case professor do
      "Jose Valim" -> IO.puts("crazy fan of him")
      "online baba" -> IO.puts("not fan")
      _ -> IO.puts("empty")
    end

  #IO.puts(subject_name)
  end
end
#Course.subject("Elixir","Manjari" )

defmodule Name do
  def human(name) do
    if String.length(name) == 7 do
      raise "empty"
    end
  end
end
#Name.human("Manjari")

tuple = {"a","b"}
crazy = "lazy"
#ret = Tuple.append(, "c")
IO.puts(tuple)
#IO.puts(ret)
