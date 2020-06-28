class Sample
  attr_accessor :name

  def set_name
    name = 'デフォルト太郎' # ローカル変数 name への代入になっている
    # 以下どちらかにすれば予期した挙動となる
    # self.name
    # @name
  end
end

sample = Sample.new
sample.set_name
puts sample.name #=> ?

