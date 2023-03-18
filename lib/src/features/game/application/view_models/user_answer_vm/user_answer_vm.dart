import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../../utils/typedef.dart';
import '../../../../common/domain/domain.dart';

part 'user_answer_vm.freezed.dart';

part 'user_answer_vm.g.dart';

@freezed
class UserAnswerVM with _$UserAnswerVM {
  const factory UserAnswerVM({
    required UserID userID,
    required String answer,
  }) = _UserAnswerVM;

  factory UserAnswerVM.fromJson(JsonMap json) => _$UserAnswerVMFromJson(json);
}
