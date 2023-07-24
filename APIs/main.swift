import Foundation

var words = Bag<String>()
words.add("Hello")
words.add("Swift")
words.add("World")

for word in words {
  print(word)
}

var stack = Stack<Int>()
stack.push(1)
stack.push(2)
stack.push(3)

while let item = stack.pop() {
  print(item)
}

var queue = Queue<String>()
queue.enqueue("First")
queue.enqueue("Second")
queue.enqueue("Third")

while let item = queue.dequeue() {
  print(item)
}
