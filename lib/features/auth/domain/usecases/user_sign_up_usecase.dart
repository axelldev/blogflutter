import 'package:blog_app/core/error/failure.dart';
import 'package:blog_app/core/usecase/usecase.dart';
import 'package:blog_app/features/auth/domain/auth_repository/auth_repository.dart';
import 'package:fpdart/fpdart.dart';

class UserSignUpUseCase implements UseCase<String, UserSignUpParams> {
  final AuthRepository _authRepository;

  UserSignUpUseCase({
    required AuthRepository authRepository,
  }) : _authRepository = authRepository;

  @override
  Future<Either<Failure, String>> call(UserSignUpParams params) async {
    return await _authRepository.signUpWithEmailPassword(
      name: params.name,
      email: params.email,
      password: params.password,
    );
  }
}

class UserSignUpParams {
  final String email;
  final String password;
  final String name;

  UserSignUpParams({
    required this.email,
    required this.password,
    required this.name,
  });
}
