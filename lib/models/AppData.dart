

import 'package:DeliveryBoyApp/models/DeliveryBoy.dart';



class AppData{


  static const int BUILD_VERSION = 200;
  static String supportedPayments = '';

  int minBuildVersion;
  String paymentMethod;

  DeliveryBoyModel? deliveryBoy;

  AppData(this.minBuildVersion,this.paymentMethod,this.deliveryBoy);

  static AppData fromJson(Map<String, dynamic> jsonObject){
    Map<String, dynamic> appDataObject = jsonObject['appdata'];

    int minBuildVersion =
    int.parse(appDataObject['application_minimum_version'].toString());
    String supportPayments = appDataObject['support_payments'].toString();
    supportedPayments = supportPayments;

    DeliveryBoyModel? deliveryBoy;
    if(jsonObject['deliveryBoy']!=null){
      deliveryBoy = DeliveryBoyModel.fromJson(jsonObject['deliveryBoy'],);
    }

    return AppData(minBuildVersion,supportPayments,deliveryBoy);
  }

  bool isAppUpdated(){
    return BUILD_VERSION >= minBuildVersion;
  }

  @override
  String toString() {
    return 'AppData{BUILD_VERSION: $BUILD_VERSION, minBuildVersion: $minBuildVersion}';
  }

  static paymentMethodEnabled(int paymentMethod) {
    return supportedPayments.split(',').contains(paymentMethod.toString());
  }

}
