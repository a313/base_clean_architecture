enum Flavor {
  DEV,
  STG,
  PROD,
}

class F {
  static Flavor? appFlavor;

  static String get name => appFlavor?.name ?? '';

  static String get title {
    switch (appFlavor) {
      case Flavor.DEV:
        return 'Dev App';
      case Flavor.STG:
        return 'Stg App';
      case Flavor.PROD:
        return 'Prod App';
      default:
        return 'title';
    }
  }

}
