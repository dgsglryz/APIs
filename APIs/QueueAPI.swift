import Foundation

public struct QueueIterator<T>: IteratorProtocol {
  private var items: [T]
  private var currentIndex: Int
  
  init(items: [T]) {
    self.items = items
    currentIndex = 0
  }
  
  public mutating func next() -> T? {
    guard currentIndex < items.count else {
      return nil
    }
    let item = items[currentIndex]
    currentIndex += 1
    return item
  }
}

public final class Queue<E>: Sequence {
  private var items: [E] = []
  
  public init() {}
  
  public func enqueue(_ item: E) {
    items.append(item)
  }
  
  public func dequeue() -> E? {
    guard !items.isEmpty else {
      return nil
    }
    return items.removeFirst()
  }
  
  public func peek() -> E? {
    return items.first
  }
  
  public func isEmpty() -> Bool {
    return items.isEmpty
  }
  
  public func makeIterator() -> QueueIterator<E> {
    return QueueIterator(items: items)
  }
}
