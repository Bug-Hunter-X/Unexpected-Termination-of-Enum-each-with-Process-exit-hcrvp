```elixir
list = [1, 2, 3, 4, 5]

Enum.each(list, fn x ->
  if x == 3 do
    # Instead of exiting the process, we can handle it gracefully.
    IO.puts("Skipping 3")
  else
    IO.puts(x)
  end
end)

#Alternative solution using Enum.filter to exclude the element
filtered_list = Enum.filter(list, fn x -> x != 3 end)
Enum.each(filtered_list, fn x -> IO.puts(x) end)
```