import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../../utils/typedef.dart';
import '../../../../common/domain/domain.dart';

part 'get_answer_request.g.dart';

@JsonSerializable()
class GetAnswerRequest {
  const GetAnswerRequest({
    required this.lobbyID,
  });

  final String lobbyID;

  factory GetAnswerRequest.fromJson(JsonMap json) =>
      _$GetAnswerRequestFromJson(json);

  JsonMap toJson() => _$GetAnswerRequestToJson(this);
}
