class JwtSettings {
  const JwtSettings({
    required this.secret,
    required this.issuer,
    required this.tokenExpiresInMins,
    required this.audience,
  });

  final String secret;
  final String issuer;
  final int tokenExpiresInMins;
  final String audience;
}
