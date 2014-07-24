require 'pry'

class Queue
  def initialize()
    @queue=Array.new(size)
    head= size-1 #2
    tail = 0
  end

  def enqueue(x)
    if tail == size
      "queue is full"
    else
      @queue[tail]=x
      tail= tail+1
    end

  end

  def dequeue
    if head == tail
     "queue is empty"
    else
     item=@queue[head]
      head = head-1
    end
  end

  def print
    @queue
  end

end

q=Queue.new(3)
q.enqueue(8)
q o.print
