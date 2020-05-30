import 'package:dartz/dartz.dart';
import 'package:flutter_ddd/src/middleware/values/value_failure.dart';
import 'package:flutter_ddd/src/middleware/values/value_object.dart';
import 'package:flutter_ddd/src/middleware/values/value_validator.dart';

class Password extends ValueObject<String> {
  factory Password(String input) {
    assert(input != null);
    return Password._(
      validatePassword(input),
    );
  }

  const Password._(this.value);

  @override
  final Either<ValueFailure<String>, String> value;
}
