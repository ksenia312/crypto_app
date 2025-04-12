import 'package:crypto_app/domain/model/app_exception.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'app_state.freezed.dart';

@freezed
sealed class AsyncState<T> with _$AsyncState<T> {


  const factory AsyncState.loading([T? lastData]) = LoadingState<T>;

  const factory AsyncState.data(T data) = DataState<T>;

  const factory AsyncState.error(AppException error, [T? lastData]) = ErrorState<T>;
}
