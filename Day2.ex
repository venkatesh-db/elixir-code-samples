job = 'Google'
salary = '1000000'
health = 'good' #global objects

defmodule Prayer do
  def ask_god do
    job = 'Google'
    salary = '1000000'
    health = 'good'
    if job === 'Google' do
      money = "5lakh"
      IO.puts(money)
    else
      money = nil
    end
    cond do
      job === 'Google' ->
        money= "5lakh"
        IO.puts(money)
      job === 'Amazon' ->
        money= "3lakh"

    end

    IO.puts(job)
  end
end

Prayer.ask_god()

defmodule Sleep do
  defstruct no_hours: 8, sound: "dinosaur"
end

defmodule Eating do
  defstruct protein: nil, fruits: nil, carbs: nil
end

defmodule Main do
  def main do
    manjari = %Sleep{}
    IO.inspect(manjari)
    IO.puts(manjari.no_hours)
    sravya = %Sleep{no_hours: 7}
    IO.inspect(sravya)
    venkatesh = %Eating{protein: "high_nutrients", fruits: ["apple", "pomogranate"]}
    IO.inspect(venkatesh)
  end
end
Main.main()

#in function we can do any operations where in structure we only have variables. when we create object then it allocates memory to it.
#
