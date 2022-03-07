// Copyright (c) 2021, the LifeStepApp.  Please see the AUTHORS file
// for details_demo. All rights reserved. Use of this source code is governed by a
// LifeStepApp license that can be found in the LICENSE file.





import 'package:flutter_ui_components/common/language.dart';

class MainConfig {
  MainConfig._();

  ///
  /// AppVersion
  /// For your app, you need to change according based on your app version
  ///
  static const String app_version = '1.0';


  ///
  /// API URL
  /// Change your backend url
  ///
  static const String main_base_url = 'https://app.pets.az';

  static const String main_app_url = main_base_url + '/index.php/';

  static const String main_app_image_url = main_base_url + '/storage/';

  static const String main_app_image_thumbs_url =
      main_base_url + '/uploads/thumbnail/';

  static const String GOOGLE_PLAY_STORE_URL =
      '';

  static const String APPLE_APP_STORE_URL = '';

  ///
  /// Facebook Key
  ///
  static const String mapBoxAccessToken= 'pk.eyJ1IjoiZGlnaXRhbGtzMjIiLCJhIjoiY2t6cGF5cXd2MDZnNDJ1cXMyejdzdXp6dCJ9.DXh1ziXOWPL3VlPjSj7DIw';

  static const String fbKey = '480870179755980';


  ///
  /// Animation Duration
  ///
  static const Duration animation_duration = Duration(milliseconds: 500);


  ///
  /// Fonts Family Config
  /// Before you declare you here,
  /// 1) You need to add font under assets/fonts/
  /// 2) Declare at pubspec.yaml
  /// 3) Update your font family name at below
  ///
  static const String main_default_font_family = 'Mulish';

  /// Default Language
// static const main_default_language = 'en';

// static const main_language_list = [Locale('en', 'US'), Locale('ar', 'DZ')];
  static const String main_app_db_name = 'main_db.db';

  ///
  /// For default language change, please check
  /// LanguageFragment for language code and country code
  /// ..............................................................
  /// Language             | Language Code     | Country Code
  /// ..............................................................
  /// "Azerbaijani"            | "az"              | "AZ"
  /// "English"            | "en"              | "EN"
  /// "Russian"            | "ru"              | "RU"
  /// ..............................................................
  ///
  static final Language defaultLanguage =
  Language(languageCode: 'az', countryCode: 'AZ', name: 'Azerbaijani');

  static final List<Language> mainSupportedLanguageList = <Language>[
    Language(languageCode: 'az', countryCode: 'AZ', name: 'Azerbaijani'),
    Language(languageCode: 'ru', countryCode: 'RU', name: 'Russian'),
    // Language(languageCode: 'en', countryCode: 'EN', name: 'English'),
  ];

  ///
  /// Price Format
  /// Need to change according to your format that you need
  /// E.g.
  /// ",##0.00"   => 2,555.00
  /// "##0.00"    => 2555.00
  /// ".00"       => 2555.00
  /// ",##0"      => 2555
  /// ",##0.0"    => 2555.0
  ///
  static const String priceFormat = ',###.00';

  ///
  /// Date Time Format
  ///
  static const String dateFormat = 'dd-MM-yyyy HH:mm:ss';

  ///
  /// iOS App No
  ///
  static const String iOSAppStoreId = '';

  ///
  /// Tmp Image Folder Name
  ///
  static const String tmpImageFolderName = 'tmpfolder';

  ///
  /// Image Loading
  ///
  /// - If you set "true", it will load thumbnail image first and later it will
  ///   load full image
  /// - If you set "false", it will load full image directly and for the
  ///   placeholder image it will use default placeholder Image.
  ///
  static const bool USE_THUMBNAIL_AS_PLACEHOLDER = true;

  ///
  /// Image Size
  ///
  static const int profileImageSize = 512;

  ///
  /// Token Id
  ///
  static const bool isShowTokenId = true;

  ///
  /// ShowSubCategory
  ///
  static const bool isShowSubCategory = true;

  ///
  /// Default Limit
  ///
  static const int DEFAULT_LOADING_LIMIT = 30;
  static const int CATEGORY_LOADING_LIMIT = 10;
  static const int COLLECTION_PRODUCT_LOADING_LIMIT = 10;
  static const int DISCOUNT_PRODUCT_LOADING_LIMIT = 10;
  static const int FEATURE_PRODUCT_LOADING_LIMIT = 10;
  static const int LATEST_PRODUCT_LOADING_LIMIT = 10;
  static const int TRENDING_PRODUCT_LOADING_LIMIT = 10;

  ///
  ///Login Setting
  ///
  static bool showFacebookLogin = false;
  static bool showGoogleLogin = true;
  static bool showPhoneLogin = true;

  ///
  ///Release Settings
  ///
  static bool kReleaseMode = false;

  ///
  /// Map API Key
  /// If you change here, you need to update in server.
  ///
  // static const String main_map_api_key = 'AIzaSyBGbriAvr7gcfh2tqPnrlBRHaEB841oro0';
  // static const String main_map_api_key = 'AIzaSyCCNzxwr6Va-VLthLzobEH37Tyc9uQJeVk';
  static const String main_map_api_key = 'AIzaSyCCNzxwr6Va-VLthLzobEH37Tyc9uQJeVk';

  ///
  /// Image Size
  ///
  static const int otpTime = 180;

}