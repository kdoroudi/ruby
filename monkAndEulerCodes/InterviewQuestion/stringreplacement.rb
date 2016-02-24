def stg_rep(string)
  i = 0
  while i < string.length
    if string[i] == " "
      string[i] = "%20"
      i += 1
    else
      i += 1
    end
  end
  print string
end


      
