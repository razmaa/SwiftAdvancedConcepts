import Foundation

class Stack<T> {
    private var elements: [T] = []
    
    func push(_ element: T) {
        elements.append(element)
    }
    
    func pop() -> T? {
        return elements.isEmpty ? nil : elements.removeLast()
    }
    
    func size() -> Int {
        return elements.count
    }
    
    func printStackContents() -> String {
        let contentString = elements.reversed().map { "\($0)" }.joined(separator: ", ")
        return "Stack contents (top to bottom): [\(contentString)]"
    }
}

