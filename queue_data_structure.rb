require 'pry'

class Queue
  def initialize(size)
    @queue=Array.new
    @tail = 0
    @size = size
  end

  def enqueue(x)
    if @tail == @size
      "queue is full"
    else
      @queue[@tail]=x
      @tail = @tail+1
    end

  end

  def dequeue
    if @queue.empty?
     "queue is empty"
    else
     @queue.delete_at(0)
    end
  end

  def print
    @queue
  end

end

q=Queue.new()
q.enqueue(8)
q.enqueue(9)
q.enqueue(9)
q.dequeue
q.dequeue
q.dequeue
x=q.dequeue
p x
