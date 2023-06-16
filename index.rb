require_relative 'enumerable'

class MyList
  include MyEnumerable
  
  def initialize(*params)
    @list = params
  end

  def each
    @list.each { |item| yield item }
  end

end