mother = 'mom'
affection = 'love'
defmodule Talk do
 def conversation(gossip, person ) do
   IO.puts gossip
   IO.puts (person)
 end
end
Talk.conversation("earning","manjari" )

defmodule  Whatsapp do
 def chatting do
   profile = 'manjari'
   status = 'god'
   last_seen = 'Active'
   if last_seen === 'Active' do
     reply = "hello"
     IO.puts(reply)
   else
      reply = "late"
   end

  IO.puts(profile)
 end
end

Whatsapp.chatting()

defmodule Driving do
 defstruct speed: 120, type: "Harrier"
end

defmodule Course do
 defstruct monday: nil, tuesday: nil, friday: nil
end

defmodule Subject do
 def time do
    present= %Driving{}
   IO.inspect(present)
    zeyun = %Course{monday: "No class" }
   IO.inspect(Zeyun)
    boyland= %{tuesday: "Class", friday: ["party", "no class"]}
   IO.inspect(boyland)
 end
end
Subject.time()

defmodule Feeling do
  def response(status) do
    cond do
      status === 'feeling_happy' ->
        response = "Good"
        IO.puts(response)
      status === 'sad' ->
        response = "hurt"
    end
  end

end

Feeling.response('feeling_happy')
