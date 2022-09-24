abstract class UseCaseWithParams<Type, Params> {
  Future<Type> execute(Params params);
}
