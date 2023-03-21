import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../../utils/typedef.dart';

part 'start_answer_request.g.dart';

@JsonSerializable()
class StartAnswerRequest {
  const StartAnswerRequest({
    required this.lobbyID,
  });

  final String lobbyID;

  factory StartAnswerRequest.fromJson(JsonMap json) =>
      _$StartAnswerRequestFromJson(json);

  JsonMap toJson() => _$StartAnswerRequestToJson(this);
}
