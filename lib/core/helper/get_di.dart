
// import 'dart:convert';
// import 'package:six_pos/controller/account_controller.dart';
// import 'package:six_pos/controller/auth_controller.dart';
// import 'package:six_pos/controller/brand_controller.dart';
// import 'package:six_pos/controller/cart_controller.dart';
// import 'package:six_pos/controller/category_controller.dart';
// import 'package:six_pos/controller/coupon_controller.dart';
// import 'package:six_pos/controller/customer_controller.dart';
// import 'package:six_pos/controller/expense_controller.dart';
// import 'package:six_pos/controller/income_controller.dart';
// import 'package:six_pos/controller/language_controller.dart';
// import 'package:six_pos/controller/localization_controller.dart';
// import 'package:six_pos/controller/menu_controller.dart';
// import 'package:six_pos/controller/order_controller.dart';
// import 'package:six_pos/controller/pos_controller.dart';
// import 'package:six_pos/controller/product_controller.dart';
// import 'package:six_pos/controller/splash_controller.dart';
// import 'package:six_pos/controller/supplier_controller.dart';
// import 'package:six_pos/controller/theme_controller.dart';
// import 'package:six_pos/controller/transaction_controller.dart';
// import 'package:six_pos/controller/unit_controller.dart';
// import 'package:six_pos/data/repository/account_repo.dart';
// import 'package:six_pos/data/repository/auth_repo.dart';
// import 'package:six_pos/data/repository/brand_repo.dart';
// import 'package:six_pos/data/repository/cart_repo.dart';
// import 'package:six_pos/data/repository/category_repo.dart';
// import 'package:six_pos/data/repository/coupon_repo.dart';
// import 'package:six_pos/data/repository/customer_repo.dart';
// import 'package:six_pos/data/repository/expense_repo.dart';
// import 'package:six_pos/data/repository/income_repo.dart';
// import 'package:six_pos/data/repository/language_repo.dart';
// import 'package:six_pos/data/repository/order_repo.dart';
// import 'package:six_pos/data/repository/pos_repo.dart';
// import 'package:six_pos/data/repository/product_repo.dart';
// import 'package:six_pos/data/repository/splash_repo.dart';
// import 'package:six_pos/data/api/api_client.dart';
// import 'package:six_pos/data/repository/supplier_repo.dart';
// import 'package:six_pos/data/repository/transaction_repo.dart';
// import 'package:six_pos/data/repository/unit_repo.dart';
// import 'package:six_pos/util/app_constants.dart';
// import 'package:six_pos/data/model/response/language_model.dart';
// import 'package:flutter/services.dart';
// import 'package:shared_preferences/shared_preferences.dart';
// import 'package:get/get.dart';

// Future<Map<String, Map<String, String>>> init() async {
//   // Core
//   final sharedPreferences = await SharedPreferences.getInstance();
//   Get.lazyPut(() => sharedPreferences);
 


//   Map<String, Map<String, String>> languages = {};
//   for(LanguageModel languageModel in AppConstants.languages) {
//     String jsonStringValues =  await rootBundle.loadString('assets/language/${languageModel.languageCode}.json');
//     Map<String, dynamic> mappedJson = json.decode(jsonStringValues);
//     Map<String, String> jsonValue = {};
//     mappedJson.forEach((key, value) {
//       jsonValue[key] = value.toString();
//     });
//     languages['${languageModel.languageCode}_${languageModel.countryCode}'] = jsonValue;
//   }
//   return languages;
// }
