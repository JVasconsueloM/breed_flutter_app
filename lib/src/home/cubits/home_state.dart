import 'package:breed_api/breed_api.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'home_state.freezed.dart';

enum HomeStatus {
  initial,
  loading,
  success,
  failure;
}

@freezed
class HomeState with _$HomeState {
  const factory HomeState({
    @Default(HomeStatus.initial) HomeStatus status,
    @Default([]) List<Breed> breeds,
  }) = _HomeState;
}
