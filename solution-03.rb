num = 0
num_next = 1
def fibonnaci(count)
    (count - 2).times do
      num = num + num_next
      num_next = num + num_next
      puts a
    end
    num_next
end

# Small issue with it need to check 
# I can fix it up
fibonnaci(0)
fibonnaci(1)
fibonnaci(4)
fibonacci(7)
