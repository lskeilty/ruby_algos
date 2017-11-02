def  balanced?(string)
  valid_syntax = {'{': '}', '[': ']', '(': ')'}
  has_appeared = []
  string.each_char do |char|
    if valid_syntax[has_appeared[-1]] == char
      has_appeared.pop
    else
      has_appeared.push(char)
    end
  end
  has_appeared.empty?
end

# runtime complexity: O(n)
# space complexity: O(n)

# O(1) + O(n) = O(n)

# '([))' == false
# '([])' == true
# a hash is better than an array because the runtime is faster with a hash. arrays you have iterate through