import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../../utils/typedef.dart';
import '../../../../common/domain/domain.dart';

part 'give_answer_request.g.dart';

@JsonSerializable()
class GiveAnswerRequest {
  const GiveAnswerRequest({
    required this.lobbyID,
    required this.answer,
  });

  final LobbyID lobbyID;
  final String answer;

  factory GiveAnswerRequest.fromJson(JsonMap json) =>
      _$GiveAnswerRequestFromJson(json);

  JsonMap toJson() => _$GiveAnswerRequestToJson(this);
}
