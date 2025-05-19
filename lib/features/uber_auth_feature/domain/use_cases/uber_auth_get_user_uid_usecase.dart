
import 'package:bodafasta_driver/features/uber_auth_feature/domain/repositories/uber_auth_repository.dart';

class UberAuthGetUserUidUseCase {
  final UberAuthRepository uberAuthRepository;

  UberAuthGetUserUidUseCase({required this.uberAuthRepository});

  Future<String> call() async {
    return await uberAuthRepository.uberAuthGetUserUid();
  }
}
