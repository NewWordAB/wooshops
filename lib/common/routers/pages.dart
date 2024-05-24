
import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:wooshops/common/routers/index.dart'; 
import '../../pages/index.dart'; 

class RoutePages {
  static final RouteObserver<Route> observer = RouteObserver();
  static List<String> history = [];
  // 列表
  // static List<GetPage> list = [];
  static List<GetPage> lsit = [
    GetPage(name:"/",
    page: () => const LoginPage(),
    binding:LoginBinding(),
    ),
    GetPage(
    name: RouteNames.systemSplash, 
    page: () => const SplashPage(),
    ),
      GetPage(
    name: RouteNames.stylesText, 
    page: () => const TextPage(),
    ),

      GetPage(
        name: RouteNames.mainPage,
        page: () => const MainPage(),
      ),
      GetPage(
        name: RouteNames.cartApplyPromoCode,
        page: () => const ApplyPromoCodePage(),
      ),
      GetPage(
        name: RouteNames.cartBuyDone,
        page: () => const BuyDonePage(),
      ),
      GetPage(
        name: RouteNames.cartBuyNow,
        page: () => const BuyNowPage(),
      ),
      GetPage(
        name: RouteNames.cartCartIndex,
        page: () => const CartIndexPage(),
      ),
      GetPage(
        name: RouteNames.goodsCategory,
        page: () => const CategoryPage(),
      ),
      GetPage(
        name: RouteNames.goodsHome,
        page: () => const HomePage(),
      ),
      GetPage(
        name: RouteNames.goodsProductList,
        page: () => const ProductListPage(),
      ),
      GetPage(
        name: RouteNames.myLanguage,
        page: () => const LanguagePage(),
      ),
      GetPage(
        name: RouteNames.myMyAddress,
        page: () => const MyAddressPage(),
      ),
      GetPage(
        name: RouteNames.myMyIndex,
        page: () => const MyIndexPage(),
      ),
      GetPage(
        name: RouteNames.myOrderDetails,
        page: () => const OrderDetailsPage(),
      ),
      GetPage(
        name: RouteNames.myOrderList,
        page: () => const OrderListPage(),
      ),
      GetPage(
        name: RouteNames.myProfileEdit,
        page: () => const ProfileEditPage(),
      ),
      GetPage(
        name: RouteNames.myTheme,
        page: () => const ThemePage(),
      ),
      GetPage(
        name: RouteNames.searchSearchFilter,
        page: () => const SearchFilterPage(),
      ),
      GetPage(
        name: RouteNames.searchSearchIndex,
        page: () => const SearchIndexPage(),
      ),
      GetPage(
        name: RouteNames.systemWelcome,
        page: () => const WelcomePage(),
      ),
      GetPage(
        name: RouteNames.systemLogin,
        page: () => const LoginPage(),
      ),
      GetPage(
        name: RouteNames.systemRegister,
        page: () => const RegisterPage(),
      ),
      GetPage(
        name: RouteNames.systemRegisterPin,
        page: () => const RegisterPinPage(),
      ),
     
      GetPage(
        name: RouteNames.systemUserAgreement,
        page: () => const UserAgreementPage(),
      ),
  ];
}
