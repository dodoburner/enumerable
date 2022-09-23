module MyEnumerable
    def all?
      each do |e|
        return false if yield(e) == false
      end
      return true
    end
  
    def any?
      each do |e|
        return true if yield(e) == true
      end
      return false
    end
  
    def filter
      result = []
      each do |e|
        result << e if yield(e) == true
      end
      return result
    end
  end
  