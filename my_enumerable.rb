module MyEnumerable
  def all?
    each do |e|
      return false if yield(e) == false
    end
    true
  end

  def any?
    each do |e|
      return true if yield(e) == true
    end
    false
  end

  def filter
    result = []
    each do |e|
      result << e if yield(e) == true
    end
    result
  end
end
