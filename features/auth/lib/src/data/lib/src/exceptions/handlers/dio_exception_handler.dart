import 'package:dio/dio.dart';

import '../exceptions.dart';

class DioExceptionHandler implements ExceptionsHandler {
  final ExceptionsMapper<Exception> _dioExceptionsMapper;

  DioExceptionHandler({
    required ExceptionsMapper<Exception> dioExceptionsMapper,
  }) : _dioExceptionsMapper = dioExceptionsMapper;

  @override
  Future<T> safeExecute<T>({
    required Future<T> Function() execute,
  }) {
    {
      try {
        return execute();
      } on DioException catch (e) {
        throw _dioExceptionsMapper.map(e);
      } catch (_) {
        throw GenericAuthException();
      }
    }
  }
}
