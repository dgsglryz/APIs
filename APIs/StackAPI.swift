import Foundation

public struct StackIterator<T>: IteratorProtocol {
  private var items: [T]
  private var currentIndex: Int
  
  init(items: [T]) {
    self.items = items
    currentIndex = items.count - 1
  }
  
  public mutating func next() -> T? {
    guard currentIndex >= 0 else {
      return nil
    }
    let item = items[currentIndex]
    currentIndex -= 1
    return item
  }
}

public final class Stack<E>: Sequence {
  private var items: [E] = []
  
  public init() {}
  
  public func push(_ item: E) {
    items.append(item)
  }
  
  public func pop() -> E? {
    return items.popLast()
  }
  
  public func peek() -> E? {
    return items.last
  }
  
  public func isEmpty() -> Bool {
    return items.isEmpty
  }
  
  public func makeIterator() -> StackIterator<E> {
    return StackIterator(items: items)
  }
}

