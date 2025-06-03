import Foundation

// MARK: - Protocols

public protocol Shape {
    func area() -> Double
    func perimeter() -> Double
}

// MARK: - Classes

public final class Circle: Shape {
    public let radius: Double

    public init(radius: Double) {
        self.radius = radius
    }
    
    deinit {
        print("Circle with radius \(radius) is being deinitialized.")
    }

    public func area() -> Double {
        return Double.pi * radius * radius
    }

    public func perimeter() -> Double {
        return 2 * Double.pi * radius
    }
}

public final class Rectangle: Shape {
    public let width: Double
    public let height: Double

    public init(width: Double, height: Double) {
        self.width = width
        self.height = height
        print("Rectangle initialized with width \(width) and height \(height).")
    }
    
    deinit {
        print("Rectangle with width \(width) and height \(height) is being deinitialized.")
    }

    public func area() -> Double {
        return width * height
    }

    public func perimeter() -> Double {
        return 2 * (width + height)
    }
}

// MARK: - Opaque and Boxed Types Functions

public func generateShape() -> some Shape {
    return Circle(radius: 5.0)
}

public func calculateShapeDetails(for shape: some Shape) -> (area: Double, perimeter: Double) {
    return (area: shape.area(), perimeter: shape.perimeter())
}

public func printAnyShapeDetails(_ shape: any Shape) {
    print("Any Shape Details -> Area: \(shape.area()), Perimeter: \(shape.perimeter())")
}



