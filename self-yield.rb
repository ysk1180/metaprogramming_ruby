# よくあるコード
class PC
  attr_writer :name, :os, :price

  def initialize(name, os, price)
    self.name = name
    self.os = os
    self.price = price
  end
end

mac_book_air = PC.new('mac book air', 'mac', 150_000)
p mac_book_air #-> #<PC:0x00007fcf05863158 @name="mac book air", @os="mac", @price=150000>

# 自己yield活用パターン
class PC
  attr_writer :name, :os, :price

  def initialize
    yield self
  end
end

mac_book_pro = PC.new do |pc|
  pc.name = 'mac book pro'
  pc.os = 'mac'
  pc.price = 200_000
end
p mac_book_pro #-> #<PC:0x00007f8015017128 @name="mac book pro", @os="mac", @price=200000>

# どっちも対応できるパターン
class PC
  attr_writer :name, :os, :price

  def initialize(name = nil, os = nil, price = nil)
    if block_given?
      yield self
    else
      self.name = name
      self.os = os
      self.price = price
    end
  end
end
