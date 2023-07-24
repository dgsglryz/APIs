import Foundation

public struct BagIterator<T>: IteratorProtocol {
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

public final class Bag<E>: Sequence {
  private var items: [E] = []
  
  public init() {}
  
  public func add(_ item: E) {
    items.append(item)
  }
  
  public func isEmpty() -> Bool {
    return items.isEmpty
  }
  
  public func makeIterator() -> BagIterator<E> {
    return BagIterator(items: items)
  }
}

