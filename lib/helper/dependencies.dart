// import 'package:delivery_app/controllers/popular_product_controller.dart';
// import 'package:delivery_app/data/api/api_client.dart';
// import 'package:delivery_app/data/repository/popular_product_repo.dart';
// import 'package:get/get.dart';
//
// Future<void> init()async{
//   //api Client
//   Get.lazyPut(()=>ApiClient(appBaseUrl:"https://mvs.bslmeiyu.com"));
//
//   //repos
//   Get.lazyPut(() =>PopularProductRepo(apiClient:Get.find()));
//
//   //Controller
//   Get.lazyPut(() => PopularProductController(popularProductRepo:Get.find()));
// }