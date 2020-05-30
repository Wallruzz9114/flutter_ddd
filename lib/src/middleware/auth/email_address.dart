import 'package:dartz/dartz.dart';
import 'package:flutter_ddd/src/middleware/values/value_failure.dart';
import 'package:flutter_ddd/src/middleware/values/value_object.dart';
import 'package:flutter_ddd/src/middleware/values/value_validator.dart';

class EmailAddress extends ValueObject<String> {
  factory EmailAddress(String input) {
    assert(input != null);
    return EmailAddress._(
      validateEmailAddress(input),
    );
  }

  const EmailAddress._(this.value);

  @override
  final Either<ValueFailure<String>, String> value;
}
