import Foundation

public final class Stack<T> {
    private var elements: [T] = []
    
    public func push(_ element: T) {
        elements.append(element)
    }
    
    public func pop() -> T? {
        return elements.isEmpty ? nil : elements.removeLast()
    }
    
    public func size() -> Int {
        return elements.count
    }
    
    public func printStackContents() -> String {
        let contentString = elements.reversed().map { "\($0)" }.joined(separator: ", ")
        return "Stack contents (top to bottom): [\(contentString)]"
    }
}

