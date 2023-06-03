#each customer asks the products he has to order.
#take the order from the customer
#list of products can be different esssentials, fruits, cereals etc
#take the order and print it

defmodule Account do
  defstruct id: nil, name: nil
end
defmodule Customer do
  def order(account, items) do
    case items do
      "banana" -> fruits(account, items)
      "online baba" -> IO.puts("not fan")
      _ -> IO.puts("empty")
    end
  end
  def fruits(account,fruit_name) do
    details = %{account: fruit_name}

  end
  def add_items(details, item_name) do
    details = Map.put(details , :adding, item_name)

  end

end
defmodule Create do
  def create do
    manjari = %Account{id: 1, name: 'manjari'}
    IO.inspect(manjari)
    Customer.order(manjari, "banana")
  end
end
venkatesh= Create.create()
IO.inspect(venkatesh)
jose = Customer.add_items(venkatesh, "apple")
IO.inspect(jose)
