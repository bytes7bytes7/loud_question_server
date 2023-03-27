part of 'game_state.dart';

class AnswersJsonConverter extends JsonConverter<Map<UserID, String>, JsonMap> {
  const AnswersJsonConverter();

  @override
  Map<UserID, String> fromJson(JsonMap json) {
    return json
        .map((key, value) => MapEntry(UserID.fromString(key), value as String));
  }

  @override
  JsonMap toJson(Map<UserID, String> object) {
    return object.map((key, value) => MapEntry(key.str, value));
  }
}
