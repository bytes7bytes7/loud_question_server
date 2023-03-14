class JwtSettings {
  const JwtSettings({
    required this.secret,
    required this.issuer,
    required this.accessExpiresInMins,
    required this.refreshExpiresInMins,
    required this.audience,
  });

  final String secret;
  final String issuer;
  final int accessExpiresInMins;
  final int refreshExpiresInMins;
  final String audience;
}
