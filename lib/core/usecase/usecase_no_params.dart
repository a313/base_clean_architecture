import 'data_state.dart';

abstract class UseCaseWithParams<Type> {
  Future<DataState<Type>> execute();
}
