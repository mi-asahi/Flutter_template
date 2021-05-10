enum Flavor {
  DEVELOP,
  STAGING,
  PRODUCT,
}

class F {
  static Flavor? appFlavor;

  static String get title {
    switch (appFlavor) {
      case Flavor.DEVELOP:
        return 'template-dev';
      case Flavor.STAGING:
        return 'template-stg';
      case Flavor.PRODUCT:
        return 'template';
      default:
        return 'title';
    }
  }

}
