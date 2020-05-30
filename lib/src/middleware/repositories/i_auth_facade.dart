import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_ddd/src/middleware/auth/auth_failure.dart';

import '../auth/email_address.dart';
import '../auth/password.dart';

abstract class IAuthFacade {
  Future<Either<AuthFailure, Unit>> signUp({
    @required EmailAddress email,
    @required Password password,
  });

  Future<Either<AuthFailure, Unit>> signIn({
    @required EmailAddress email,
    @required Password password,
  });

  Future<Either<AuthFailure, Unit>> signOut();
}
