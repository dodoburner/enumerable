class MyList
  include MyEnumerable

  def initialize(*elements)
    @list = elements
  end

  def each
    @list.each{ |e| yield(e) }
  end
end

list = MyList.new(1, 2, 3, 4)