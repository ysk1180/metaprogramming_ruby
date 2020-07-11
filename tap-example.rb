a = ['r', 'u', 'b', 'y'].map(&:next).pop
puts a #-> z

a = ['r', 'u', 'b', 'y'].map(&:next).tap{|x| p x}.pop #-> ["s", "v", "c", "z"]
puts a #-> z

