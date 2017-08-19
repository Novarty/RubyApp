class App
  str = ''
  res = ''
  count=1
  print "Введите требуемое значение: "; n = gets.to_i

  (0..n-1).each {|i|
    if i == 0
      puts str = '1'
    end
    (0..str.size-1).each {|j|
      if !str[j + 1].nil? and str[j + 2].nil? # если следующий элемент последний в строке
        if str[j] == str[j + 1]
          count += 1
        else
          res += count.to_s + str[j] + '1' + str[j + 1]
          break
        end
      else
        if str[j] == str[j + 1]
          count +=1
        else
          res += count.to_s + str[j]
          count = 1
        end
      end
    }
    str = res
    puts str
    count = 1
    res = ''
  }
end