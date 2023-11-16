import 'package:DeliveryBoyApp/models/AllOrdersModel.dart';
import 'package:DeliveryBoyApp/models/Product.dart';
// import 'package:DeliveryBoyApp/models/AllOrdersModel.dart';
// import 'package:DeliveryBoyApp/models/Product.dart';
//
// class Autogenerated {
//   Data data;
//   bool status;
//   String stateNum;
//   String message;
//
//   Autogenerated({required this.data, required this.status, required this.stateNum, required this.message});
//
//   Autogenerated.fromJson(Map<String, dynamic> json)
//       : data = Data.fromJson(json['data']),
//         status = json['status'],
//         stateNum = json['stateNum'],
//         message = json['message'];
// }
//
// class Data {
//   List<OrdersModel> orders;
//
//   Data({required this.orders});
//
//   Data.fromJson(Map<String, dynamic> json)
//       : orders = (json['orders'] as List).map((order) => OrdersModel.fromJson(order)).toList();
// }
//
// class OrdersModel {
//   int? id;
//   int? status;
//   int? categoryId;
//   int? order;
//   dynamic shopRevenue;
//   dynamic adminRevenue;
//   // String? deliveryFee;
//   double? total;
//   int? otp;
//   dynamic couponDiscount;
//   dynamic latitude;
//   dynamic longitude;
//   dynamic couponId;
//   dynamic deliveryBoyId;
//   int? userId;
//   int? addressId;
//   dynamic shopId;
//   int? orderPaymentId;
//   String? orderType;
//   int? count;
//   int? type;
//   int? isNotification;
//   int? isPaid;
//   dynamic expeditedFees;
//   String? createdAt;
//   String? updatedAt;
//   String? orderDateTime;
//   Statu? statu;
//   List<Carts>? carts;
//   dynamic shop;
//   User? user;
//   dynamic coupon;
//   Address? address;
//   DeliveryBoy? deliveryBoy;
//   OrderPayment? orderPayment;
//   OrderTime? orderTime;
//
//   OrdersModel({
//     this.id,
//     this.status,
//     this.categoryId,
//     this.order,
//     this.shopRevenue,
//     this.adminRevenue,
//     // this.deliveryFee,
//     this.total,
//     this.otp,
//     this.couponDiscount,
//     this.latitude,
//     this.longitude,
//     this.couponId,
//     this.deliveryBoyId,
//     this.userId,
//     this.addressId,
//     this.shopId,
//     this.orderPaymentId,
//     this.orderType,
//     this.count,
//     this.type,
//     this.isNotification,
//     this.isPaid,
//     this.expeditedFees,
//     this.createdAt,
//     this.updatedAt,
//     this.orderDateTime,
//     this.statu,
//     this.carts,
//     this.shop,
//     this.user,
//     this.coupon,
//     this.address,
//     this.deliveryBoy,
//     this.orderPayment,
//     this.orderTime,
//   });
//
//   OrdersModel.fromJson(Map<String, dynamic> json) {
//     id = json['id'];
//     status = json['status'];
//     categoryId = json['category_id'];
//     order = json['order'];
//     shopRevenue = json['shop_revenue'];
//     adminRevenue = json['admin_revenue'];
//     // deliveryFee = json['delivery_fee'];
//     total = json['total'];
//     otp = json['otp'];
//     couponDiscount = json['coupon_discount'];
//     latitude = json['latitude'];
//     longitude = json['longitude'];
//     couponId = json['coupon_id'];
//     deliveryBoyId = json['delivery_boy_id'];
//     userId = json['user_id'];
//     addressId = json['address_id'];
//     shopId = json['shop_id'];
//     orderPaymentId = json['order_payment_id'];
//     orderType = json['order_type'];
//     count = json['count'];
//     type = json['type'];
//     isNotification = json['is_notification'];
//     isPaid = json['is_paid'];
//     expeditedFees = json['expedited_fees'];
//     createdAt = json['created_at'];
//     updatedAt = json['updated_at'];
//     orderDateTime = json['order_date_time'];
//     statu = json['statu'] != null ? Statu.fromJson(json['statu']) : null;
//     if (json['carts'] != null) {
//       carts = <Carts>[];
//       json['carts'].forEach((v) {
//         carts!.add(Carts.fromJson(v));
//       });
//     }
//     shop = json['shop'];
//     user = json['user'] != null ? User.fromJson(json['user']) : null;
//     coupon = json['coupon'];
//     address = json['address'] != null ? Address.fromJson(json['address']) : null;
//     deliveryBoy = json['delivery_boy'] != null ? DeliveryBoy.fromJson(json['delivery_boy']) : null;
//     orderPayment = json['order_payment'] != null ? OrderPayment.fromJson(json['order_payment']) : null;
//     orderTime = json['order_time'] != null ? OrderTime.fromJson(json['order_time']) : null;
//   }
//
//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = <String, dynamic>{};
//     data['id'] = id;
//     data['status'] = status;
//     data['category_id'] = categoryId;
//     data['order'] = order;
//     data['shop_revenue'] = shopRevenue;
//     data['admin_revenue'] = adminRevenue;
//     // data['delivery_fee'] = deliveryFee;
//     data['total'] = total;
//     data['otp'] = otp;
//     data['coupon_discount'] = couponDiscount;
//     data['latitude'] = latitude;
//     data['longitude'] = longitude;
//     data['coupon_id'] = couponId;
//     data['delivery_boy_id'] = deliveryBoyId;
//     data['user_id'] = userId;
//     data['address_id'] = addressId;
//     data['shop_id'] = shopId;
//     data['order_payment_id'] = orderPaymentId;
//     data['order_type'] = orderType;
//     data['count'] = count;
//     data['type'] = type;
//     data['is_notification'] = isNotification;
//     data['is_paid'] = isPaid;
//     data['expedited_fees'] = expeditedFees;
//     data['created_at'] = createdAt;
//     data['updated_at'] = updatedAt;
//     data['order_date_time'] = orderDateTime;
//     if (statu != null) {
//       data['statu'] = statu!.toJson();
//     }
//     if (carts != null) {
//       data['carts'] = carts!.map((v) => v.toJson()).toList();
//     }
//     data['shop'] = shop;
//     if (user != null) {
//       data['user'] = user!.toJson();
//     }
//     data['coupon'] = coupon;
//     if (address != null) {
//       data['address'] = address!.toJson();
//     }
//     if (deliveryBoy != null) {
//       data['delivery_boy'] = deliveryBoy!.toJson();
//     }
//     if (orderPayment != null) {
//       data['order_payment'] = orderPayment!.toJson();
//     }
//     if (orderTime != null) {
//       data['order_time'] = orderTime!.toJson();
//     }
//     return data;
//   }
// }
// class Statu {
//   int id;
//   Title title;
//
//   Statu({required this.id, required this.title});
//
//   Statu.fromJson(Map<String, dynamic> json)
//       : id = json['id'],
//         title = Title.fromJson(json['title']);
//
//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = <String, dynamic>{};
//     data['id'] = id;
//     data['title'] = title.toJson();
//     return data;
//   }
// }
//
// class Title {
//   String en;
//   String ar;
//
//   Title({required this.en, required this.ar});
//
//   Title.fromJson(Map<String, dynamic> json)
//       : en = json['en'],
//         ar = json['ar'];
//
//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = <String, dynamic>{};
//     data['en'] = en;
//     data['ar'] = ar;
//     return data;
//   }
// }
//
//
// class Carts {
//   int? id;
//   int? orderId;
//   int? quantity;
//   double? price;
//   double? weight;
//   dynamic deliveryFee;
//   dynamic subTotal;
//   int? productId;
//   int? shopId;
//   String? createdAt;
//   String? updatedAt;
//   Product? product;
//   Shop? shop;
//
//   Carts({
//     this.id,
//     this.orderId,
//     this.quantity,
//     this.price,
//     this.weight,
//     this.deliveryFee,
//     this.subTotal,
//     this.productId,
//     this.shopId,
//     this.createdAt,
//     this.updatedAt,
//     this.product,
//     this.shop,
//   });
//
//   Carts.fromJson(Map<String, dynamic> json) {
//     id = json['id'];
//     orderId = json['order_id'];
//     quantity = json['quantity'];
//     price = json['price'];
//     weight = json['weight'];
//     deliveryFee = json['delivery_fee'];
//     subTotal = json['sub_total'];
//     productId = json['product_id'];
//     shopId = json['shop_id'];
//     createdAt = json['created_at'];
//     updatedAt = json['updated_at'];
//     product = json['product'] != null ? Product.fromJson(json['product']) : null;
//     shop = json['shop'] != null ? Shop.fromJson(json['shop']) : null;
//   }
//   //
//   // Map<String, dynamic> toJson() {
//   //   final Map<String, dynamic> data = <String, dynamic>{};
//   //   data['id'] = id;
//   //   data['order_id'] = orderId;
//   //   data['quantity'] = quantity;
//   //   data['price'] = price;
//   //   data['weight'] = weight;
//   //   data['delivery_fee'] = deliveryFee;
//   //   data['sub_total'] = subTotal;
//   //   data['product_id'] = productId;
//   //   data['shop_id'] = shopId;
//   //   data['created_at'] = createdAt;
//   //   data['updated_at'] = updatedAt;
//   //   if (product != null) {
//   //     data['product'] = product!.toJson();
//   //   }
//   //   if (shop != null) {
//   //     data['shop'] = shop!.toJson();
//   //   }
//   //   return data;
//   // }
// }
//
// class SubCategory {
//   int? id;
//   int? categoryId;
//   int? icon;
//   Title? title;
//   String? image;
//
//   String? createdAt;
//   String? updatedAt;
//  // int? pivot;
//
//   SubCategory({
//     required this.id,
//     required this.categoryId,
//     required this.icon,
//     required this.title,
//     required this.image,
//
//     required this.createdAt,
//     required this.updatedAt,
//     //required this.pivot,
//   });
//
//   SubCategory.fromJson(Map<String, dynamic> json) {
//     id = json['id']??null;
//     categoryId = json['category_id']??'';
//     image = json['image_url']??'';
//
//     icon = json['icon']??null;
//     title = Title.fromJson(json['title']);
//     createdAt = json['created_at']??'';
//     updatedAt = json['updated_at']??'';
//     // pivot = json['pivot']??'';
//   }
//
//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = <String, dynamic>{};
//     data['id'] = id;
//     data['category_id'] = categoryId;
//     data['icon'] = icon;
//     data['title'] = title;
//     data['created_at'] = createdAt;
//     data['updated_at'] = updatedAt;
//    // data['pivot'] = pivot;
//     return data;
//   }
// }
//
// class User {
//   int id;
//   String name;
//   String email;
//   String mobile;
//   int points;
//   String createdAt;
//   String updatedAt;
//
//   User({
//     required this.id,
//     required this.name,
//     required this.email,
//     required this.mobile,
//     required this.points,
//     required this.createdAt,
//     required this.updatedAt,
//   });
//
//   User.fromJson(Map<String, dynamic> json) {
//     id = json['id'];
//     name = json['name'];
//     email = json['email'];
//     mobile = json['mobile'];
//     points = json['points'];
//     createdAt = json['created_at'];
//     updatedAt = json['updated_at'];
//   }
//
//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = <String, dynamic>{};
//     data['id'] = id;
//     data['name'] = name;
//     data['email'] = email;
//     data['mobile'] = mobile;
//     data['points'] = points;
//     data['created_at'] = createdAt;
//     data['updated_at'] = updatedAt;
//     return data;
//   }
// }
//
// class Address {
//   int id;
//   int userId;
//   String title;
//   String description;
//   String latitude;
//   String longitude;
//   String createdAt;
//   String updatedAt;
//
//   Address({
//     required this.id,
//     required this.userId,
//     required this.title,
//     required this.description,
//     required this.latitude,
//     required this.longitude,
//     required this.createdAt,
//     required this.updatedAt,
//   });
//
//   Address.fromJson(Map<String, dynamic> json) {
//     id = json['id'];
//     userId = json['user_id'];
//     title = json['title'];
//     description = json['description'];
//     latitude = json['latitude'];
//     longitude = json['longitude'];
//     createdAt = json['created_at'];
//     updatedAt = json['updated_at'];
//   }
//
//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = <String, dynamic>{};
//     data['id'] = id;
//     data['user_id'] = userId;
//     data['title'] = title;
//     data['description'] = description;
//     data['latitude'] = latitude;
//     data['longitude'] = longitude;
//     data['created_at'] = createdAt;
//     data['updated_at'] = updatedAt;
//     return data;
//   }
// }
//
// class DeliveryBoy {
//   int id;
//   String name;
//   String mobile;
//   String image;
//   String createdAt;
//   String updatedAt;
//
//   DeliveryBoy({
//     required this.id,
//     required this.name,
//     required this.mobile,
//     required this.image,
//     required this.createdAt,
//     required this.updatedAt,
//   });
//
//   DeliveryBoy.fromJson(Map<String, dynamic> json) {
//     id = json['id'];
//     name = json['name'];
//     mobile = json['mobile'];
//     image = json['image'];
//     createdAt = json['created_at'];
//     updatedAt = json['updated_at'];
//   }
//
//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = <String, dynamic>{};
//     data['id'] = id;
//     data['name'] = name;
//     data['mobile'] = mobile;
//     data['image'] = image;
//     data['created_at'] = createdAt;
//     data['updated_at'] = updatedAt;
//     return data;
//   }
// }
//
// class OrderPayment {
//   int id;
//   String paymentMethod;
//   String status;
//   String createdAt;
//   String updatedAt;
//
//   OrderPayment({
//     required this.id,
//     required this.paymentMethod,
//     required this.status,
//     required this.createdAt,
//     required this.updatedAt,
//   });
//
//   OrderPayment.fromJson(Map<String, dynamic> json) {
//     id = json['id'];
//     paymentMethod = json['payment_method'];
//     status = json['status'];
//     createdAt = json['created_at'];
//     updatedAt = json['updated_at'];
//   }
//
//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = <String, dynamic>{};
//     data['id'] = id;
//     data['payment_method'] = paymentMethod;
//     data['status'] = status;
//     data['created_at'] = createdAt;
//     data['updated_at'] = updatedAt;
//     return data;
//   }
// }
//
// class OrderTime {
//   int id;
//   String time;
//   String createdAt;
//   String updatedAt;
//
//   OrderTime({
//     required this.id,
//     required this.time,
//     required this.createdAt,
//     required this.updatedAt,
//   });
//
//   OrderTime.fromJson(Map<String, dynamic> json) {
//     id = json['id'];
//     time = json['time'];
//     createdAt = json['created_at'];
//     updatedAt = json['updated_at'];
//   }
//
//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = <String, dynamic>{};
//     data['id'] = id;
//     data['time'] = time;
//     data['created_at'] = createdAt;
//     data['updated_at'] = updatedAt;
//     return data;
//   }
// }

//old model


class Autogenerated {
  Data? data;
  bool? status;
  String? stateNum;
  String? message;

  Autogenerated({this.data, this.status, this.stateNum, this.message});

  Autogenerated.fromJson(Map<String, dynamic> json) {
    data = json['data'] != null ? new Data.fromJson(json['data']) : null;
    status = json['status'];
    stateNum = json['stateNum'];
    message = json['message'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.data != null) {
      data['data'] = this.data!.toJson();
    }
    data['status'] = this.status;
    data['stateNum'] = this.stateNum;
    data['message'] = this.message;
    return data;
  }
}

class Data {
  List<OrdersModel>? orders;

  Data({this.orders});

  Data.fromJson(Map<String, dynamic> json) {
    if (json['orders'] != null) {
      orders = <OrdersModel>[];
      json['orders'].forEach((v) { orders!.add(new OrdersModel.fromJson(v)); });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.orders != null) {
      data['orders'] = this.orders!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class OrdersModel {
  int? id;
  int? status;
  int? categoryId;
  int? order;
  dynamic shopRevenue;
  dynamic adminRevenue;
  // String? deliveryFee;
  double? total;
  int? otp;
  dynamic couponDiscount;
  dynamic latitude;
  dynamic longitude;
  dynamic couponId;
  dynamic deliveryBoyId;
  int? userId;
  int? addressId;
  dynamic shopId;
  int? orderPaymentId;
  String? orderType;
  int? count;
  int? type;
  int? isNotification;
  int? isPaid;
  dynamic expeditedFees;
  String? createdAt;
  String? updatedAt;
  String? orderDateTime;
  Statu? statu;
  List<Carts>? carts;
  dynamic shop;
  User? user;
  dynamic coupon;
  Address? address;
  DeliveryBoy? deliveryBoy;
  OrderPayment? orderPayment;
  OrderTime? orderTime;

  OrdersModel({
    this.id,
    this.status,
    this.categoryId,
    this.order,
    this.shopRevenue,
    this.adminRevenue,
    // this.deliveryFee,
    this.total,
    this.otp,
    this.couponDiscount,
    this.latitude,
    this.longitude,
    this.couponId,
    this.deliveryBoyId,
    this.userId,
    this.addressId,
    this.shopId,
    this.orderPaymentId,
    this.orderType,
    this.count,
    this.type,
    this.isNotification,
    this.isPaid,
    this.expeditedFees,
    this.createdAt,
    this.updatedAt,
    this.orderDateTime,
    this.statu,
    this.carts,
    this.shop,
    this.user,
    this.coupon,
    this.address,
    this.deliveryBoy,
    this.orderPayment,
    this.orderTime,
  });

  OrdersModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    status = json['status'];
    categoryId = json['category_id'];
    order = json['order'];
    shopRevenue = json['shop_revenue'];
    adminRevenue = json['admin_revenue'];
    // deliveryFee = json['delivery_fee'];
    total = double.parse(json['total'].toString());
    otp = json['otp'];
    couponDiscount = json['coupon_discount'];
    latitude = json['latitude'];
    longitude = json['longitude'];
    couponId = json['coupon_id'];
    deliveryBoyId = json['delivery_boy_id'];
    userId = json['user_id'];
    addressId = json['address_id'];
    shopId = json['shop_id'];
    orderPaymentId = json['order_payment_id'];
    orderType = json['order_type'];
    count = json['count'];
    type = json['type'];
    isNotification = json['is_notification'];
    isPaid = json['is_paid'];
    expeditedFees = json['expedited_fees'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
    orderDateTime = json['order_date_time'];
    statu = json['statu'] != null ? Statu.fromJson(json['statu']) : null;
    if (json['carts'] != null) {
      carts = <Carts>[];
      json['carts'].forEach((v) {
        carts!.add(Carts.fromJson(v));
      });
    }
    shop = json['shop'];
    user = json['user'] != null ? User.fromJson(json['user']) : null;
    coupon = json['coupon'];
    address = json['address'] != null ? Address.fromJson(json['address']) : null;
    deliveryBoy = json['delivery_boy'] != null ? DeliveryBoy.fromJson(json['delivery_boy']) : null;
    orderPayment = json['order_payment'] != null ? OrderPayment.fromJson(json['order_payment']) : null;
    orderTime = json['order_time'] != null ? OrderTime.fromJson(json['order_time']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['status'] = status;
    data['category_id'] = categoryId;
    data['order'] = order;
    data['shop_revenue'] = shopRevenue;
    data['admin_revenue'] = adminRevenue;
    // data['delivery_fee'] = deliveryFee;
    data['total'] = total;
    data['otp'] = otp;
    data['coupon_discount'] = couponDiscount;
    data['latitude'] = latitude;
    data['longitude'] = longitude;
    data['coupon_id'] = couponId;
    data['delivery_boy_id'] = deliveryBoyId;
    data['user_id'] = userId;
    data['address_id'] = addressId;
    data['shop_id'] = shopId;
    data['order_payment_id'] = orderPaymentId;
    data['order_type'] = orderType;
    data['count'] = count;
    data['type'] = type;
    data['is_notification'] = isNotification;
    data['is_paid'] = isPaid;
    data['expedited_fees'] = expeditedFees;
    data['created_at'] = createdAt;
    data['updated_at'] = updatedAt;
    data['order_date_time'] = orderDateTime;
    if (statu != null) {
      data['statu'] = statu!.toJson();
    }
    if (carts != null) {
      data['carts'] = carts!.map((v) => v.toJson()).toList();
    }
    data['shop'] = shop;
    if (user != null) {
      data['user'] = user!.toJson();
    }
    data['coupon'] = coupon;
    if (address != null) {
      data['address'] = address!.toJson();
    }
    if (deliveryBoy != null) {
      data['delivery_boy'] = deliveryBoy!.toJson();
    }
    if (orderPayment != null) {
      data['order_payment'] = orderPayment!.toJson();
    }
    if (orderTime != null) {
      data['order_time'] = orderTime!.toJson();
    }
    return data;
  }
}
class Statu {
  int? id;
  Title? title;

  Statu({this.id, this.title});

  Statu.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    title = json['title'] != null ? new Title.fromJson(json['title']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    if (this.title != null) {
      data['title'] = this.title!.toJson();
    }
    return data;
  }
}

class Title {
  String? en;
  String? ar;

  Title({this.en, this.ar});

  Title.fromJson(Map<String, dynamic> json) {
    en = json['en'];
    ar = json['ar'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['en'] = this.en;
    data['ar'] = this.ar;
    return data;
  }
}


class Carts {
  int? id;
  int? quantity;
  int? productId;
  int? orderId;
  int? shopId;
  int? deliveryBoyId;
  dynamic fixedShippingRate;
  dynamic total;
  dynamic taxes;
  String? createdAt;
  String? updatedAt;
  Product? product;
  Shop? shop;
  DeliveryBoy? deliveryBoy;
  SubCategory? subcategory;

  Carts({
    this.id,
    this.quantity,
    this.productId,
    this.orderId,
    this.shopId,
    this.deliveryBoyId,
    this.fixedShippingRate,
    this.total,
    this.taxes,
    this.createdAt,
    this.updatedAt,
    this.product,
    this.shop,
    this.subcategory,
    this.deliveryBoy,
  });

  Carts.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    quantity = json['quantity'];
    productId = json['product_id'];
    orderId = json['order_id'];
    shopId = json['shop_id'];
    deliveryBoyId = json['delivery_boy_id'];
    fixedShippingRate = json['fixed_shipping_rate'];
    total = json['total'];
    taxes = json['taxes'];
    subcategory=SubCategory.fromJson(json['sub_category'])??null;
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
    product = json['product'] != null ? Product.fromJson(json['product']) : null;
    shop = json['shop'] != null ? Shop.fromJson(json['shop']) : null;
    deliveryBoy = json['delivery_boy'] != null ? DeliveryBoy.fromJson(json['delivery_boy']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['quantity'] = quantity;
    data['product_id'] = productId;
    data['order_id'] = orderId;
    data['shop_id'] = shopId;
    data['delivery_boy_id'] = deliveryBoyId;
    data['fixed_shipping_rate'] = fixedShippingRate;
    data['total'] = total;
    data['taxes'] = taxes;
    data['created_at'] = createdAt;
    data['updated_at'] = updatedAt;
    // if (product != null) {
    //   data['product'] = product!.toJson();
    // }
    if (shop != null) {
      data['shop'] = shop!.toJson();
    }
    if (deliveryBoy != null) {
      data['delivery_boy'] = deliveryBoy!.toJson();
    }
    return data;
  }
}
class User {
  int? id;
  String? name;
  String? email;
  String? emailVerifiedAt;
  String? mobile;
  int? mobileVerified;
  String? fcmToken;
  String? avatarUrl;
  int? blocked;
  int? accountType;
  int? defaultt;
  String? referrer;
  String? referrerLink;
  dynamic? otp;
  String? createdAt;
  String? updatedAt;

  User({this.id, this.name, this.email, this.emailVerifiedAt, this.mobile, this.mobileVerified, this.fcmToken, this.avatarUrl, this.blocked, this.accountType, this.defaultt, this.referrer, this.referrerLink, this.otp, this.createdAt, this.updatedAt});

User.fromJson(Map<String, dynamic> json) {
id = json['id'];
name = json['name'];
email = json['email'];
emailVerifiedAt = json['email_verified_at'];
mobile = json['mobile'];
mobileVerified = json['mobile_verified'];
fcmToken = json['fcm_token']??'';
avatarUrl = json['avatar_url'];
blocked = json['blocked'];
accountType = json['account_type'];
defaultt = json['default'];
referrer = json['referrer'];
referrerLink = json['referrer_link'];
otp = json['otp'];
createdAt = json['created_at'];
updatedAt = json['updated_at'];
}

Map<String, dynamic> toJson() {
final Map<String, dynamic> data = new Map<String, dynamic>();
data['id'] = this.id;
data['name'] = this.name;
data['email'] = this.email;
data['email_verified_at'] = this.emailVerifiedAt;
data['mobile'] = this.mobile;
data['mobile_verified'] = this.mobileVerified;
data['fcm_token'] = this.fcmToken;
data['avatar_url'] = this.avatarUrl;
data['blocked'] = this.blocked;
data['account_type'] = this.accountType;
data['default'] = this.defaultt;
data['referrer'] = this.referrer;
data['referrer_link'] = this.referrerLink;
data['otp'] = this.otp;
data['created_at'] = this.createdAt;
data['updated_at'] = this.updatedAt;
return data;
}
}

class Address {
int? id;
String? longitude;
String? latitude;
int? distance;
String? name;
String? street;
String? buildingNumber;
String? city;
int? defaultt;
int? apartmentNum;
int? active;
int? type;
int? userId;
String? createdAt;
String? updatedAt;

Address({this.id, this.longitude, this.latitude, this.distance, this.name, this.street, this.buildingNumber, this.city, this.defaultt, this.apartmentNum, this.active, this.type, this.userId, this.createdAt, this.updatedAt});

Address.fromJson(Map<String, dynamic> json) {
id = json['id'];
longitude = json['longitude'];
latitude = json['latitude'];
distance = json['distance'];
name = json['name'];
street = json['street'];
buildingNumber = json['building_number'];
city = json['city'];
defaultt = json['default'];
apartmentNum = json['apartment_num'];
active = json['active'];
type = json['type'];
userId = json['user_id'];
createdAt = json['created_at'];
updatedAt = json['updated_at'];
}

Map<String, dynamic> toJson() {
final Map<String, dynamic> data = new Map<String, dynamic>();
data['id'] = this.id;
data['longitude'] = this.longitude;
data['latitude'] = this.latitude;
data['distance'] = this.distance;
data['name'] = this.name;
data['street'] = this.street;
data['building_number'] = this.buildingNumber;
data['city'] = this.city;
data['default'] = this.defaultt;
data['apartment_num'] = this.apartmentNum;
data['active'] = this.active;
data['type'] = this.type;
data['user_id'] = this.userId;
data['created_at'] = this.createdAt;
data['updated_at'] = this.updatedAt;
return data;
}
}

class DeliveryBoy {
int? id;
Title? name;
Null? agencyName;
String? carNumber;
String? email;
Null? emailVerifiedAt;
String? password;
Null? fcmToken;
double? latitude;
double? longitude;
int? isFree;
int? isOffline;
int? isActive;
String? avatarUrl;
String? mobile;
int? mobileVerified;
int? rating;
int? totalRating;
int? categoryId;
int? shopId;
Null? rememberToken;
int? isVerified;
String? drivingLicense;
int? isApproval;
int? distance;
Null? otp;
int? fullGasBottles;
int? emptyGasBottles;
int? gasBottlesCapacity;
int? totalQuantity;
int? availableQuantity;
String? createdAt;
String? updatedAt;

DeliveryBoy({this.id, this.name, this.agencyName, this.carNumber, this.email, this.emailVerifiedAt, this.password, this.fcmToken, this.latitude, this.longitude, this.isFree, this.isOffline, this.isActive, this.avatarUrl, this.mobile, this.mobileVerified, this.rating, this.totalRating, this.categoryId, this.shopId, this.rememberToken, this.isVerified, this.drivingLicense, this.isApproval, this.distance, this.otp, this.fullGasBottles, this.emptyGasBottles, this.gasBottlesCapacity, this.totalQuantity, this.availableQuantity, this.createdAt, this.updatedAt});

DeliveryBoy.fromJson(Map<String, dynamic> json) {
id = json['id'];
name = json['name'] != null ? new Title.fromJson(json['name']) : null;
agencyName = json['agency_name'];
carNumber = json['car_number'];
email = json['email'];
emailVerifiedAt = json['email_verified_at'];
password = json['password'];
fcmToken = json['fcm_token'];
latitude = json['latitude'];
longitude = json['longitude'];
isFree = json['is_free'];
isOffline = json['is_offline'];
isActive = json['is_active'];
avatarUrl = json['avatar_url'];
mobile = json['mobile'];
mobileVerified = json['mobile_verified'];
rating = json['rating'];
totalRating = json['total_rating'];
categoryId = json['category_id'];
shopId = json['shop_id'];
rememberToken = json['remember_token'];
isVerified = json['is_verified'];
drivingLicense = json['driving_license'];
isApproval = json['is_approval'];
distance = json['distance'];
otp = json['otp'];
fullGasBottles = json['full_gas_bottles'];
emptyGasBottles = json['empty_gas_bottles'];
gasBottlesCapacity = json['gas_bottles_capacity'];
totalQuantity = json['total_quantity'];
availableQuantity = json['available_quantity'];
createdAt = json['created_at'];
updatedAt = json['updated_at'];
}

Map<String, dynamic> toJson() {
final Map<String, dynamic> data = new Map<String, dynamic>();
data['id'] = this.id;
if (this.name != null) {
data['name'] = this.name!.toJson();
}
data['agency_name'] = this.agencyName;
data['car_number'] = this.carNumber;
data['email'] = this.email;
data['email_verified_at'] = this.emailVerifiedAt;
data['password'] = this.password;
data['fcm_token'] = this.fcmToken;
data['latitude'] = this.latitude;
data['longitude'] = this.longitude;
data['is_free'] = this.isFree;
data['is_offline'] = this.isOffline;
data['is_active'] = this.isActive;
data['avatar_url'] = this.avatarUrl;
data['mobile'] = this.mobile;
data['mobile_verified'] = this.mobileVerified;
data['rating'] = this.rating;
data['total_rating'] = this.totalRating;
data['category_id'] = this.categoryId;
data['shop_id'] = this.shopId;
data['remember_token'] = this.rememberToken;
data['is_verified'] = this.isVerified;
data['driving_license'] = this.drivingLicense;
data['is_approval'] = this.isApproval;
data['distance'] = this.distance;
data['otp'] = this.otp;
data['full_gas_bottles'] = this.fullGasBottles;
data['empty_gas_bottles'] = this.emptyGasBottles;
data['gas_bottles_capacity'] = this.gasBottlesCapacity;
data['total_quantity'] = this.totalQuantity;
data['available_quantity'] = this.availableQuantity;
data['created_at'] = this.createdAt;
data['updated_at'] = this.updatedAt;
return data;
}
}

class OrderPayment {
int? id;
int? paymentType;
int? success;
Null? paymentId;
String? createdAt;
String? updatedAt;

OrderPayment({this.id, this.paymentType, this.success, this.paymentId, this.createdAt, this.updatedAt});

OrderPayment.fromJson(Map<String, dynamic> json) {
id = json['id'];
paymentType = json['payment_type'];
success = json['success'];
paymentId = json['payment_id'];
createdAt = json['created_at'];
updatedAt = json['updated_at'];
}

Map<String, dynamic> toJson() {
final Map<String, dynamic> data = new Map<String, dynamic>();
data['id'] = this.id;
data['payment_type'] = this.paymentType;
data['success'] = this.success;
data['payment_id'] = this.paymentId;
data['created_at'] = this.createdAt;
data['updated_at'] = this.updatedAt;
return data;
}
}

class OrderTime {
int? id;
String? orderDate;
String? orderTimeFrom;
String? orderTimeTo;
int? orderId;
String? createdAt;
String? updatedAt;

OrderTime({this.id, this.orderDate, this.orderTimeFrom, this.orderTimeTo, this.orderId, this.createdAt, this.updatedAt});

OrderTime.fromJson(Map<String, dynamic> json) {
id = json['id'];
orderDate = json['order_date'];
orderTimeFrom = json['order_time_from'];
orderTimeTo = json['order_time_to'];
orderId = json['order_id'];
createdAt = json['created_at'];
updatedAt = json['updated_at'];
}

Map<String, dynamic> toJson() {
final Map<String, dynamic> data = new Map<String, dynamic>();
data['id'] = this.id;
data['order_date'] = this.orderDate;
data['order_time_from'] = this.orderTimeFrom;
data['order_time_to'] = this.orderTimeTo;
data['order_id'] = this.orderId;
data['created_at'] = this.createdAt;
data['updated_at'] = this.updatedAt;
return data;
}
}


class SubCategory {
  int? id;
  Title? title;
  Description? description;
  double? price;
  int? shopId;
  int? categoryId;
  int? active;
  int? isPrimary;
  String? imageUrl;
  int? isApproval;
  int? quantity;
  String? createdAt;
  String? updatedAt;

  SubCategory({
    this.id,
    this.title,
    this.description,
    this.price,
    this.shopId,
    this.categoryId,
    this.active,
    this.isPrimary,
    this.imageUrl,
    this.isApproval,
    this.quantity,
    this.createdAt,
    this.updatedAt,
  });

  SubCategory.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    title = json['title'] != null ? Title.fromJson(json['title']) : null;
    description = json['description'] != null
        ? Description.fromJson(json['description'])
        : null;
    price = double.parse(json['price'].toString());
    shopId = json['shop_id'];
    categoryId = json['category_id'];
    active = json['active'];
    isPrimary = json['is_primary'];
    imageUrl = json['image_url'];
    isApproval = json['is_approval'];
    quantity = json['quantity'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    if (this.title != null) {
      data['title'] = this.title!.toJson();
    }
    if (this.description != null) {
      data['description'] = this.description!.toJson();
    }
    data['price'] = this.price;
    data['shop_id'] = this.shopId;
    data['category_id'] = this.categoryId;
    data['active'] = this.active;
    data['is_primary'] = this.isPrimary;
    data['image_url'] = this.imageUrl;
    data['is_approval'] = this.isApproval;
    data['quantity'] = this.quantity;
    data['created_at'] = this.createdAt;
    data['updated_at'] = this.updatedAt;
    return data;
  }
}


class Description {
  String? en;
  String? ar;

  Description({this.en, this.ar});

  Description.fromJson(Map<String, dynamic> json) {
    en = json['en'];
    ar = json['ar'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['en'] = this.en;
    data['ar'] = this.ar;
    return data;
  }
}
