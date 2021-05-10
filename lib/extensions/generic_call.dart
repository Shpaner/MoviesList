import 'package:dartz/dartz.dart';
import 'package:movies_list_app/config/exceptions/exceptions.dart';

Future<Either<AppExceptions, T>> genericCall<T>(
    Future<T> Function() functionWithReturn,
    {errorType}) async {
  try {
    final ret = await functionWithReturn();
    return right(ret);
  } catch (error) {
    print(error);
    return left(errorType ?? UnknownException());
  }
}
