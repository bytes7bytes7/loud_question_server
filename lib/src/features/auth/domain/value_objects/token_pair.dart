import 'package:equatable/equatable.dart';

class TokenPair extends Equatable {
  const TokenPair({
    required this.access,
    required this.refresh,
  });

  final String access;
  final String refresh;

  @override
  List<Object?> get props => [access, refresh];
}
