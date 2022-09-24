abstract class DataState<T> {}

class DataSuccess<T> extends DataState {
  final T data;

  DataSuccess(this.data);
}

class DataFailure<T> extends DataState {}

class IgnoreFailure<T> extends DataState {}
