# i is the index within sequence
# On the first loop i = 2 sequence[i - 1] + sequence[i - 2] is
# 2 - 1 which gives you 1 which refers to the value of the first index
# 2 - 2 which gives you 0 which refers to the value of the zero index
# Add them together, which gives the second index is 1.
# Now that i = 3
# 3 - 1 = 2 which refers to the value of the second index, which is 1.
# 3 - 2 = 1 which refers to the value of the second, which is 1.
# Add together, the third index is 2.

def fibs(n)
  sequence = [0, 1] # Start of Fibonacci sequence
  i = 2
  while i <= n
    sequence << sequence[i - 1] + sequence[i - 2]
    i += 1
  end
  return sequence[n]
end

puts fibs(3)

def fibs_rec(n)
  n < 2 ? n : fibs_rec(n - 1) + fibs_rec(n - 2)
end
