class Stack

  def initialize
    @stack_array=[]
    #create ivar to store stack here
  end

  def add(el)

    #adds an element to the stack
    @stack_array.push(el)
  end

  def remove
    @stack_array.pop
    #removes one element from the stack
  end

  def show
    @stack_array
    #returns a copy of the stack
  end

end




class Queue

  def initialize
    @queue_array=[]
  end

  def enqueue(el)
    @queue_array.push(el)
  end

  def dequeue
    @queue_array.shift
  end

  def show
    @queue_array
  end
end




class Map
  def initialize
    @map_array=[]
  end

  def assign(key,value)
    if !@map_array.include?(key)
    @map_array << [key,value]
    end
    @map_array
  end

  def lookup(key)
    value = nil
    @map_array.each do |pairs|

      if pairs.include?(key)
        value = pairs[-1]
      end

    end
        value
  end


  def remove(key)
    @map_array.each_with_index do |pairs, index|

      if pairs.include?(key)
        @map_array.delete(pairs)
      end

    end
    @map_array
  end

  def show
    @map_array
  end
end

object=Map.new


p object.assign(535,"hello")
p object.assign(534,"pizza")
p object.lookup(535)
p object.remove(534)
p object.show
