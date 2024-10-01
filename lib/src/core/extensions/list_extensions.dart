/// Extension methods for [List] of objects of type [T].
///
/// This extension adds utility functions to the [List] class for iterating over its elements.
extension ListIterationExtensions<T extends Object> on List<T> {
  /// Iterates over each element in the list and applies the given [onIterate] function.
  ///
  /// This method calls [onIterate] for each element in the list.
  ///
  /// - Parameter onIterate: A function that takes an element of type [T] and performs an operation on it.
  void iterate(void Function(T object) onIterate) {
    for (final object in this) {
      onIterate.call(object);
    }
  }
}

/// Extension methods for [List] of objects of type [T].
///
/// This extension adds a utility function to the [List] class for finding the first element that matches a condition.
extension ListFirstWhereOrNullExtensions<T extends Object> on List<T> {
  /// Returns the first element that matches the given [callback] function or null if no element matches.
  ///
  /// - Parameter callback: A function that takes an element of type [T] and returns a boolean indicating if it matches.
  /// - Returns: The first element that matches the [callback] or null if no element matches.
  T? firstWhereOrNull(bool Function(T element) callback) {
    for (final element in this) {
      if (callback(element)) return element;
    }

    return null;
  }
}

/// Extension methods for [List] of objects of type [T].
///
/// This extension adds a utility function to the [List] class for removing an element at a specified index.
extension ListRemoveAtIndexExtensions<T extends Object> on List<T> {
  /// Removes the element at the specified [index] and returns a new list without that element.
  ///
  /// - Parameter index: The index of the element to remove.
  /// - Returns: A new list without the element at the specified [index]. If the list has one or zero elements, returns an empty list.
  List<T> removeAtIndex(int index) {
    if (length <= 1) return [];

    return [...sublist(0, index), ...sublist(index + 1)];
  }
}

/// Extension methods for [List] of objects of type [T].
///
/// This extension adds a utility function to the [List] class for paginating the list.
extension ListPaginateExtensions<T extends Object> on List<T> {
  /// Paginates the list based on the given [itemsPerPage] and [currentPage].
  ///
  /// - Parameter itemsPerPage: The number of items to include on each page.
  /// - Parameter currentPage: The current page number (1-based index).
  /// - Returns: A sublist containing the items for the specified page.
  List<T> paginate({required int itemsPerPage, required int currentPage}) {
    final startIndex = (currentPage - 1) * itemsPerPage;
    final endIndex = startIndex + itemsPerPage;

    return sublist(startIndex, endIndex.clamp(0, length));
  }
}
