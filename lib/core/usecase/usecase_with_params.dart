import 'data_state.dart';

abstract class UseCaseWithParams<Type, Params> {
  Future<DataState<Type>> execute(Params params);
}
