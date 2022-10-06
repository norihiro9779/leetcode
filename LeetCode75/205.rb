class Isomorphic
  def is_isomorphic(s, t)
    return false if s.length != t.length
    
    s_hash, t_hash = {}, {}
    0.upto(s.length) do |i|
      puts s_hash[s[i]]
      puts t_hash[t[i]]
      return false if s_hash[s[i]] != t_hash[t[i]]
      s_hash[s[i]], t_hash[t[i]] = i, i
    end
    true
  end
end

s, t = gets.chomp.split(" ")
puts Isomorphic.new.is_isomorphic(s, t)

