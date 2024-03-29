import 'dart:async';

import 'package:fluent_validation/fluent_validation.dart';
import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';
import 'package:mediator/mediator.dart';

import '../exceptions/detailed_exception.dart';
import 'behavior_validator.dart';

class ValidationBehavior<
    RQ extends Request<Either<List<DetailedException>, RS>>,
    RS> extends PipelineBehavior<RQ, Either<List<DetailedException>, RS>> {
  ValidationBehavior(@factoryParam this._validators);

  final List<BehaviorValidator<RQ, RS>> _validators;

  @override
  FutureOr<Either<List<DetailedException>, RS>> handle(
    RQ request,
    RequestHandlerDelegate<Either<List<DetailedException>, RS>> next,
  ) async {
    final errors = <ValidationError>[];

    for (final validator in _validators) {
      final validationResult = validator.validate(request);

      errors.addAll(validationResult.errors);
    }

    if (errors.isNotEmpty) {
      return left(
        errors
            .map(
              (e) => DetailedException.validation(
                code: e.key,
                description: e.message,
              ),
            )
            .toList(),
      );
    }

    return await next();
  }
}
