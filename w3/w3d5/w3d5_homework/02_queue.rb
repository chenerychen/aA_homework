class Queue 

    def initialize
        @line = [] 
    end 

    def enqueue(person)
        line.unshift(person)
    end 

    def dequeue
        line.pop 
    end 
    
    def peek
        puts line.last 
    end 

    def peek_all 
        line
    end 

    def size 
        line.size
    end 

    def empty? 
        line.length == 0
    end 

    private 
    attr_reader :line

end 

class SmartQueue < Queue 

    def initialize(n)
        @max_size = n 
        super()
    end 

    def full? 
        line.size == @max_size
    end 

    def enqueue(*people)
        people.each do |person| 
            super(person) unless self.full?
        end 
       
    end 

end 

sq = SmartQueue.new(3) 
sq.enqueue('chen','grace')
sq.enqueue("happypan", "Grizzpan")
p sq.peek_all














# class Queue

#     def initialize 
#         @array = [] 
#     end 

#     def enqueue(el)
#         array.unshift(el)
#         nil 
#     end 

#     def dequeue
#         array.pop
#     end 

#     def peep 
#         puts array.last 
#     end 

#     def peep_all 
#         p array.dup
#     end 

#     def size 
#         array.length
#     end 

#     def empty? 
#         array.length == 0 
#     end 

#     private 
#     attr_reader :array 
# end 



# class Queue

#     # attr_reader :store

#     def initialize 
#         @store = []
#     end 

#     def enqueue(el)
#         store.unshift(el)
#         self 
#     end 

#     def dequeue 
#         store.pop 
#     end 

#     def peek 
#         store.first
#     end 

#     def size 
#         store.length 
#     end 

#     def empty? 
#         store.empty? 
#     end 
    
#     private 
#     attr_reader :store
# end 