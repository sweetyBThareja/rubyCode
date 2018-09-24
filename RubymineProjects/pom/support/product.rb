module TestData
class Product
  extend DataMagic

  attr_reader :data

  def initialize(data = {})
    @data = data
  end

  def self.random
    DataMagic.load('product.yml')
  end
end
end