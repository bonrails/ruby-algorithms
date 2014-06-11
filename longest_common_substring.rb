def lg_common_substring(a,b)
  l = []
  0.upto(a.length-1) {|x| l[x] = [] unless l[x];l[x][0] = 0}
  0.upto(b.length-1) {|x| l[0][x] = 0}
  len = 0
  result = [0,0]
  0.upto(a.length-1) do |i|
    0.upto(b.length-1) do |j|
      if a[i] != b[j]
        l[i][j] = 0
      elsif i > 0 &&j > 0
        l[i][j] = 1 + l[i-1][j-1]
        len = l[i][j] if len < l[i][j]
        result = [i,j]
      end
    end
  end
  substring = ""
  0.upto(len-1) do |k|
    if result[0] >= result[1]
      value  = a[result[0] - k]
    else
      value  =b[result[1] - k]
    end
    substring = substring + value
  end
  substring.reverse
end

p lg_common_substring("Jagan reddy","mohan reddy")