// Represents a 1-tuple, only useful to generalize the approach used by tracked action which uses tuples to capture required arguments.
// Follow the same convention / pattern as the tuples from the tuple library
class Tuple1<T1> {
  final T1 item1;

  const Tuple1(this.item1);

  factory Tuple1.fromList(List items) {
    if (items.length != 1) {
      throw ArgumentError('items must have length 1');
    }

    return Tuple1<T1>(items[0] as T1);
  }

  List<T1> toList({bool growable = false}) => List.from(<T1>[item1], growable: growable);

  @override
  String toString() => '$item1';

  @override
  bool operator ==(Object other) => other is Tuple1 && other.item1 == item1;

  @override
  int get hashCode => item1.hashCode;
}
