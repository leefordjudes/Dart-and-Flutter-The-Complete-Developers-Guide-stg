void main() {
  var circleSlot = new Slot<Circle>();
  circleSlot.insert(new Circle());

  var squareSlot = new Slot<Square>();
  squareSlot.insert(new Square());
}

class Circle {
  @override
  String toString() {
    return "Circle";
  }
}

class Square {
  @override
  String toString() {
    return "Square";
  }
}

class Slot<T> {
  insert(T shape) {
    print('Shape: ${shape.toString()}');
  }
}
