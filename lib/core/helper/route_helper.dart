

class RouteHelper {
  static const String initial = '/';
  static const String splash = '/splash';
  static const String home = '/home';
  static const String shopSettings = '/shop-settings';

  static getInitialRoute() => initial;
  static getSplashRoute() => splash;
  static getHomeRoute(String name) => '$home?name=$name';
  static getShopSettings() => shopSettings;

  // static List<GetPage> routes = [
  //   // GetPage(name: initial, page: () => const SplashScreen()),
  //   // GetPage(name: splash, page: () => const SplashScreen()),
  //   // GetPage(name: home, page: () => const NavBarScreen()),
  //   // GetPage(name: shopSettings, page: () => const ShopSettings()),
  // ];
}