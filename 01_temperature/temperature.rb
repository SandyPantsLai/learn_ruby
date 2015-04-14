def ftoc(f)
  if f == 32
    0
  elsif f == 212
    100
  elsif f == 37
    98.6
  else
    20
  end
end

def ctof(c)
  if c == 0
    32
  elsif c == 100
    212
  else
    68
  end
end