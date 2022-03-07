

import 'package:flutter_ui_components/config/main_config.dart';
import 'package:intl/intl.dart';

class MainConst {
  MainConst._();

  static const List<String> CUSTOM__WEEK__DAYS =  ["SUN", "MON", "TUE", "WED", "THU", "FRI", "SAT"];
  static const List<String> IMAGE_FILE_FORMATS =  ["tif", "tiff", "bmp", "jpeg", "jpg", "gif", "png", "heic"];

  static const String THEME__IS_DARK_THEME = 'THEME__IS_DARK_THEME';

  static const String LANGUAGE__LANGUAGE_CODE_KEY =
      'LANGUAGE__LANGUAGE_CODE_KEY';
  static const String LANGUAGE__COUNTRY_CODE_KEY = 'LANGUAGE__COUNTRY_CODE_KEY';
  static const String LANGUAGE__LANGUAGE_NAME_KEY =
      'LANGUAGE__LANGUAGE_NAME_KEY';

  static const String APP_INFO__END_DATE_KEY = 'END_DATE';
  static const String APP_INFO__START_DATE_KEY = 'START_DATE';
  static const String APPINFO_PREF_VERSION_NO = 'APPINFO_PREF_VERSION_NO';
  static const String APPINFO_PREF_FORCE_UPDATE = 'APPINFO_PREF_FORCE_UPDATE';
  static const String APPINFO_FORCE_UPDATE_MSG = 'APPINFO_FORCE_UPDATE_MSG';
  static const String APPINFO_FORCE_UPDATE_TITLE = 'APPINFO_FORCE_UPDATE_TITLE';

  static const String FILTERING__DESC = 'desc'; // Don't Change
  static const String FILTERING__ASC = 'asc'; // Don't Change
  static const String FILTERING__ADDED_DATE = 'added_date'; // Don't Change
  static const String FILTERING__TRENDING = 'touch_count'; // Don't Change
  static const String ONE = '1';
  static const String FILTERING_FEATURE = 'featured_date';
  static const String FILTERING_TRENDING = 'touch_count';

  static const String PLATFORM = 'android';

  static const String RATING_ONE = '1';
  static const String RATING_TWO = '2';
  static const String RATING_THREE = '3';
  static const String RATING_FOUR = '4';
  static const String RATING_FIVE = '5';


  static const String CATEGORY_ID = 'cat_id';
  static const String SUB_CATEGORY_ID = 'sub_cat_id';

  static const String REFUND_FLAG = 'REFUND_FLAG';
  static const String TERMS_FLAG = 'TERMS_FLAG';

  static const String CONST_CATEGORY = 'category';
  static const String CONST_SUB_CATEGORY = 'subcategory';
  static const String CONST_PRODUCT = 'product';

  static const String USER_DELECTED = 'deleted';
  static const String USER_BANNED = 'banned';
  static const String USER_UN_PUBLISHED = 'unpublished';

  static const String VALUE_HOLDER__WHATSAPP = 'whapsapp_no';
  static const String VALUE_HOLDER__PHONE = 'about_phone1';
  static const String FILTERING_TYPE_NAME_PRODUCT = 'product';
  static const String FILTERING_TYPE_NAME_CATEGORY = 'category';
  static const int REQUEST_CODE__MENU_USER_PROFILE_FRAGMENT = 1001;
  static const int REQUEST_CODE__MENU_FORGOT_PASSWORD_FRAGMENT = 1002;
  static const int REQUEST_CODE__MENU_REGISTER_FRAGMENT = 1003;
  static const int REQUEST_CODE__MENU_VERIFY_EMAIL_FRAGMENT = 1004;
  static const int REQUEST_CODE__MENU_HOME_FRAGMENT = 1005;
  static const int REQUEST_CODE__DASHBOARD_GOOGLE_VERIFY_FRAGMENT = 2013;

  static final NumberFormat psFormat = NumberFormat(MainConfig.priceFormat);
  static const String priceTwoDecimalFormatString = '###.00';
  static final NumberFormat priceTwoDecimalFormat =
  NumberFormat(priceTwoDecimalFormatString);

  ///
  /// Hero Tags
  ///
  static const String HERO_TAG__IMAGE = '_image';
  static const String HERO_TAG__TITLE = '_title';
  static const String HERO_TAG__ORIGINAL_PRICE = '_original_price';
  static const String HERO_TAG__UNIT_PRICE = '_unit_price';

  ///
  /// Firebase Auth Providers
  ///
  static const String emailAuthProvider = 'password';
  static const String appleAuthProvider = 'apple';
  static const String facebookAuthProvider = 'facebook';
  static const String googleAuthProvider = 'google';
  static const String defaultEmail = 'admin@ps.com';
  static const String defaultPassword = 'admin@ps.com';

  ///
  /// Error Codes
  ///
  static const String ERROR_CODE_10001 = '10001'; // Totally No Record
  static const String ERROR_CODE_10002 =
      '10002'; // No More Record at pagination
}