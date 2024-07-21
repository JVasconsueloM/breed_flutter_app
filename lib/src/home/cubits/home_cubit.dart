import 'package:breed_api/breed_api.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pragma_breed_api/src/home/cubits/home_state.dart';

class HomeCubit extends Cubit<HomeState> {
  HomeCubit({
    required BreedApiClient repository,
  })  : _repository = repository,
        super(const HomeState());

  final BreedApiClient _repository;

  Future<void> fetchBreed({String? querySearch}) async {
    emit(state.copyWith(status: HomeStatus.loading));

    try {
      final breeds = await _repository.search(querySearch: querySearch);
      emit(
        state.copyWith(
          status: HomeStatus.success,
          breeds: breeds,
        ),
      );
    } on Exception {
      emit(state.copyWith(status: HomeStatus.failure));
    }
  }
}
