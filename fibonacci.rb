
def fibs(n)
end




def fibs_rec(n)
    n < 2 ? n : fibs_rec(n - 1) + fibs_rec(n - 2)
end

puts fibs_rec(6)
