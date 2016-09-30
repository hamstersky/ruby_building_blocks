module Enumerable
  def my_each
    return self.to_enum if !block_given?
    for x in self
      yield(x)
    end
  end

  def my_each_with_index
    return self.to_enum if !block_given?
    i = 0
    for x in self
      yield(x, i)
      i += 1
    end    
  end

  def my_select
    return self.to_enum if !block_given?
    result = []
    self.my_each { |x| result << x if yield(x) }
    result
  end

  def my_all?
    if block_given?
      self.my_each { |x| return false if !yield(x) }
    else
      self.my_each { |x| return false if !x }
    end
    true
  end

  def my_any?
    if block_given?
      self.my_each { |x| return true if yield(x) }
    else
      self.my_each { |x| return true if x }
    end
    false
  end

  def my_none?
    if block_given?
      self.my_each { |x| return false if yield(x)}
    else
      self.my_each { |x| return false if x }
    end
    true
  end

  def my_count(item = nil)
    count = 0
    if block_given?
      self.my_each { |x| count += 1 if yield(x)}
    elsif item
      self.my_each { |x| count += 1 if item == x }
    else
      self.my_each { |x| count += 1 }
    end
    count
  end

  def my_map(proc = nil)
    result = []
    if proc || (block_given? && proc)
      self.my_each { |x| result << proc.call(x) }
    elsif block_given?
      self.my_each { |x| result << yield(x) }
    else
      self.to_enum
    end
    result
  end

  # Very messy implementation of the whole injection method, but seems to be working.
  # Definetly needs refactoring
  def my_inject(initial = nil, sym = nil)
    if initial.is_a?(Integer)
      memo = initial.nil? ? self.first : initial
    else
      sym = initial
      memo = self.first
    end
    if block_given?
      if memo == self.first
        self.drop(1).my_each { |x| memo = yield(memo, x) }
      else
        self.my_each { |x| memo = yield(memo, x) }
      end
      memo
    else
      if memo == self.first
        self.drop(1).my_each { |x| memo = memo.method("#{sym.to_s}").call(x) }
      else
        self.my_each { |x| memo = memo.method("#{sym.to_s}").call(x) }
      end
      memo
    end
  end
end

def multiply_els(array)
	array.my_inject(:*)
end

array = [1, 2, 3, 4 ,5]
proc = Proc.new{ |x| x + 1 }
p array.my_each { |x| puts x }
p array.my_each_with_index { |x, i| puts "Element: #{x}, index: #{i}"}
p array.my_select { |x| x > 3 }
p array.my_all? { |x| x > 3 }
p array.my_any? { |x| x > 3 }
p array.my_none? { |x| x > 3}
p array.my_count(2)
p array.my_count { |x| x > 3 }
p array.my_count
p array.my_map { |x| x + 1 }
p array.my_map_with_proc_and_block(proc)
p array.my_map_with_proc_and_block(proc) { |x| x + 1 }
p array.my_inject(:+)
p array.my_inject(2, :+)
p array.my_inject { |x, y| x + y}
p array.my_inject(2) { |x, y| x + y}
