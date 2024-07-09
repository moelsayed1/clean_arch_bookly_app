import 'package:dio/dio.dart';

abstract class Failure {

  final String errMessage;

  Failure(this.errMessage);
}

class ServerFailure extends Failure {
  ServerFailure(super.errMessage);


  factory ServerFailure.fromDioException(DioException e) {

    switch (e.type) {
      case DioExceptionType.connectionTimeout:
        return ServerFailure('Connection timeout with API Server');
      case DioExceptionType.sendTimeout:
        return ServerFailure('Send timeout with API Server');
      case DioExceptionType.receiveTimeout:
        return ServerFailure('Receive timeout with API Server');
      case DioExceptionType.badCertificate:
        return ServerFailure('Bad certificate with API Server');
      case DioExceptionType.badResponse:
        return ServerFailure.fromResponse(e.response!.statusCode!, e.response!.data);
      case DioExceptionType.cancel:
        return ServerFailure('Request with API Server was cancelled');
      case DioExceptionType.connectionError:
        return ServerFailure('No Internet connection');
      case DioExceptionType.unknown:
        return ServerFailure('Unknown error occurred, please try again later');
    }
  }
  
  factory ServerFailure.fromResponse(int statusCode, dynamic response) {
    if (statusCode == 404) {
      return ServerFailure('Your request not found, please try again later');
    } else if(statusCode == 500) {
      return ServerFailure('There is an internal server error, please try again later');
    } else if (statusCode == 400 || statusCode == 401 || statusCode == 403) {
      return ServerFailure(response['error']['message']);
    }
    return ServerFailure('Something went wrong, please try again later');
  }

}