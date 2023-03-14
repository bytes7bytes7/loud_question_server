import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../../utils/typedef.dart';
import '../../../../common/common.dart';

part 'device_session.g.dart';

@JsonSerializable()
class DeviceSession {
  const DeviceSession({
    required this.id,
    required this.deviceInfo,
    required this.ip,
    required this.createdAt,
  });

  final DeviceSessionID id;
  final DeviceInfo deviceInfo;
  final String ip;
  final DateTime createdAt;

  factory DeviceSession.fromJson(JsonMap json) => _$DeviceSessionFromJson(json);

  JsonMap toJson() => _$DeviceSessionToJson(this);
}
