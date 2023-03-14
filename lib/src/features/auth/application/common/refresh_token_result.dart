class RefreshTokenResult {
  const RefreshTokenResult({
    required this.accessToken,
    required this.refreshToken,
  });

  final String accessToken;
  final String refreshToken;
}
