extension OrderedSet {

    /// Appends the contents of a sequencet to the ordered set.
    ///
    /// If it already contains the element, an element is not inserted.
    ///
    /// - returns: True if any item was inserted.
    @discardableResult
    public mutating func append<S : Sequence>(_ sequence: S) -> Bool
      where S.Iterator.Element == Element  {
        return sequence.map { append($0) }.contains(true)
    }

    /// Return a new ordered set with the elements of a finite sequence
    /// appended.
    public func appending<S : Sequence>(_ sequence: S)
      -> OrderedSet where S.Iterator.Element == Element {
        var copy = self
        copy.append(sequence)
        return copy
    }

    /// Remove all members in the ordered set that occur in a finite sequence.
    public mutating func subtract<S : Sequence>(_ sequence: S)
      where S.Iterator.Element == Element {
        set.subtract(sequence)
        array = array.filter { set.contains($0) }
    }

    /// Return a new ordered set with elements in this set that do not occur
    /// in a finite sequence.
    public func subtracting<S : Sequence>(_ sequence: S)
      -> OrderedSet where S.Iterator.Element == Element {
        var copy = self
        copy.subtract(sequence)
        return copy
    }
}
