# Grab a long integer separated by commas and then add the comma groupings together and continue refactoring until you get a single number.

# 123,456,789

# 1 + 2 + 3 = 6

# 4 + 5 + 6 = 15

# 7 + 8 + 9 = 24

# 61,524

# 6 + 1 = 7

# 5 + 2 + 4 = 11

# 711 = 9
# My work in progress
def adder int 
  int_arr = int.split(",").map!{ |i| i.to_i }
  int_arr.map! { |x| x.to_s.split(//).map{|chr| chr.to_i}.inject(:+)}
  int_arr.join().reverse.gsub(/(\d{3})(?=\d)/, '\\1,').reverse
end 

# adder ("23,234")


# Supe's answer

num = "123,456,789"
number = "821,432,612"
number2 = "1,143"
number3 = "1,486,321,456"

def singleNum n
  while n.length > 1
    arr = n.split(/,/)
    count = 0
    a = 0
    arr3 = []
    arr.each do |x|
      arr2 = x.split(//)
      arr2.each do |x|
        a = x.to_i
        count += a
      end
      arr3 << count
      count = 0
    end
    n = arr3.join()
    n = n.to_s.reverse.gsub(/(\d{3})(?=\d)/, '\\1,').reverse
  end
  p n.to_i
end

singleNum num
singleNum number
singleNum number2
singleNum number3