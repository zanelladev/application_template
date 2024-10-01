import 'package:flutter/material.dart';

/// An abstract class representing a contract for entities with a unique identifier.
///
/// This class enforces a standard structure for entities by requiring an [id] property.
/// It also provides implementations for equality and hash code based on the [id].
@immutable
abstract class EntityContract {
  /// The unique identifier for the entity.
  final int id;

  /// Constructs an [EntityContract] with the given [id].
  const EntityContract({required this.id});

  /// Checks if the current instance is equal to another [EntityContract] instance.
  ///
  /// Two instances are considered equal if their [id] properties are identical.
  @override
  bool operator ==(covariant EntityContract other) {
    if (identical(this, other)) return true;

    return other.id == id;
  }

  /// Returns the hash code for this entity, which is based on its [id].
  @override
  int get hashCode => id.hashCode;
}
