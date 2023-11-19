part of 'app_pages.dart';

abstract class Routes {
  Routes._();
  static const SPLASH_SCREEN = _Paths.SPLASH_SCREEN;
  static const HOME_PAGE = _Paths.HOME_PAGE;
  static const LANDING_PAGE = _Paths.LANDING_PAGE;
  static const LOGIN_PAGE  = _Paths.LOGIN_PAGE;
  static const SIGNUP_PAGE = _Paths.SIGNUP_PAGE;
  static const CATALOG_PAGE = _Paths.CATALOG_PAGE;
  static const PROFILE_PAGE = _Paths.PROFILE_PAGE;
  static const CART_PAGE = _Paths.CART_PAGE;
  static const PAYMENT_PAGE = _Paths.PAYMENT_PAGE;
  static const PAYMENT_SUCCESFUL_PAGE = _Paths.PAYMENT_SUCCESFUL_PAGE;
}

abstract class _Paths {
  _Paths._();
  static const SPLASH_SCREEN = '/splashscreen';
  static const HOME_PAGE = '/homepage';
  static const LANDING_PAGE = '/landingpage';
  static const LOGIN_PAGE = '/login';
  static const SIGNUP_PAGE = '/signup';
  static const CATALOG_PAGE = '/catalog';
  static const PROFILE_PAGE = '/profile';
  static const CART_PAGE = '/cart';
  static const PAYMENT_PAGE = '/payment';
  static const PAYMENT_SUCCESFUL_PAGE = '/payment-succesful';
}