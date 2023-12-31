// import 'package:DeliveryBoyApp/api/api_util.dart';
// import 'package:DeliveryBoyApp/controllers/AuthController.dart';
// import 'package:DeliveryBoyApp/models/DeliveryBoy.dart';
// import 'package:DeliveryBoyApp/models/MyResponse.dart';
// import 'package:DeliveryBoyApp/services/AppLocalizations.dart';
// import 'package:DeliveryBoyApp/utils/ImageUtils.dart';
// import 'package:DeliveryBoyApp/utils/SizeConfig.dart';
// import 'package:DeliveryBoyApp/views/RevenueStatScreen.dart';
// import 'package:DeliveryBoyApp/views/ReviewsScreen.dart';
//
// import 'package:DeliveryBoyApp/views/auth/EditProfileScreen.dart';
// import 'package:DeliveryBoyApp/views/auth/LoginScreen.dart';
// import 'package:cloud_firestore/cloud_firestore.dart';
// import 'package:firebase_auth/firebase_auth.dart';
// import 'package:flutter/material.dart';
// import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
// import 'package:provider/provider.dart';
// import 'package:shared_preferences/shared_preferences.dart';
//
// import '../../AppTheme.dart';
// import '../../AppThemeNotifier.dart';
// import '../../services/firestore_services.dart';
// import '../../utils/colors.dart';
// import '../../utils/shared.dart';
// import '../SelectLanguageDialog.dart';
// import '../SelectThemeDialog.dart';
//
// class SettingScreen extends StatefulWidget {
//   @override
//   _SettingScreenState createState() => _SettingScreenState();
// }
//
// class _SettingScreenState extends State<SettingScreen> {
//   ThemeData? themeData;
//   late CustomAppTheme customAppTheme;
//
//   //Global Keys
//   final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();
//   //ThemeData
//
//   final GlobalKey<ScaffoldMessengerState> _scaffoldMessengerKey = new GlobalKey<ScaffoldMessengerState>();
//
//   late FirestoreServices firestoreServices;
//   //Other Variables
//   DeliveryBoy? deliveryBoy;
//   bool isInProgress = false;
//
//   @override
//  initState()   {
//     super.initState();
//     _initUserData();
//
//     firestoreServices = FirestoreServices();
//
//   }
//
//   _initUserData() async {
//     DeliveryBoy user = await AuthController.getUser();
//     setState(() {
//       deliveryBoy = user;
//     });
//
//   }
//
//   _changeStatus() async {
//
//     if (isInProgress) return;
//
//     bool status = !deliveryBoy!.isOffline!;
// print(status);
// print(deliveryBoy!.isOffline!);
// print('------------');
//     firestoreServices.updateIsOffline(deliveryBoy!,status );
//
//     if(mounted) {
//       setState(() {
//         isInProgress = true;
//       });
//     }
//
//     MyResponse myResponse = await AuthController.changeStatus(status);
//
//     if(mounted) {
//       setState(() {
//         isInProgress = false;
//       });
//     }
//
//     if (myResponse.success) {
//       print("success");
//       deliveryBoy!.isOffline = status;
//       _initUserData();
//       if(deliveryBoy!.isOffline!){
//         showMessage(message: "Now, you are offline for delivery");
//       }else{
//         showMessage(message: "Now, you are online for delivery");
//       }
//     } else {
//       ApiUtil.checkRedirectNavigation(context, myResponse.responseCode);
//       showMessage(message: myResponse.errorText);
//     }
//   }
//   _changelog() async {
//
//     if (isInProgress) return;
//
//     bool status = !deliveryBoy!.isOffline!;
// print(status);//t
// print(deliveryBoy!.isOffline!);//f
// print('----------bbbbbbbbbbbbbbbbbbbbbbbbb--');
//     firestoreServices.updateIsOffline(deliveryBoy!,true );
//
//     if(mounted) {
//       setState(() {
//         isInProgress = true;
//       });
//     }
//
//     MyResponse myResponse = await AuthController.changeStatus(true);
//
//     if(mounted) {
//       setState(() {
//         isInProgress = false;
//       });
//     }
//
//     if (myResponse.success) {
//       deliveryBoy!.isOffline = status;
//       _initUserData();
//
//     } else {
//       ApiUtil.checkRedirectNavigation(context, myResponse.responseCode);
//       print("error");
//       showMessage(message: myResponse.errorText);
//     }
//   }
//
//   Widget build(BuildContext context) {
//     return Consumer<AppThemeNotifier>(
//       builder: (BuildContext context, AppThemeNotifier value, Widget? child) {
//         int themeType = value.themeMode();
//         themeData = AppTheme.getThemeFromThemeMode(themeType);
//         customAppTheme = AppTheme.getCustomAppTheme(themeType);
//         return MaterialApp(
//           scaffoldMessengerKey: _scaffoldMessengerKey,
//             debugShowCheckedModeBanner: false,
//             theme: themeData,
//             home: Scaffold(
//                 key: _scaffoldKey,
//                 backgroundColor: customAppTheme.bgLayer1,
//                 appBar: AppBar(
//                   backgroundColor: customAppTheme.bgLayer1,
//                   elevation: 0,
//                   leading: InkWell(
//                     onTap: (){
//                       Navigator.pop(context);
//                     },
//                     child: Icon(MdiIcons.chevronLeft,color: themeData!.colorScheme.onBackground,),
//                   ),
//                   centerTitle: true,
//                   title: Text(Translator.translate("setting"),
//                       // style: AppTheme.getTextStyle(
//                       //     themeData!.appBarTheme.textTheme!.headline6,
//                       //     fontWeight: 600)
//                   ),
//                 ),
//                 body: Column(
//                   children: [
//                     Container(
//                       height: MySize.size3,
//                       child: isInProgress
//                           ? LinearProgressIndicator(
//                               minHeight: MySize.size3,
//                             )
//                           : Container(
//                               height: MySize.size3,
//                             ),
//                     ),
//                     Expanded(
//                       child: _buildBody(),
//                     ),
//                   ],
//                 )));
//       },
//     );
//   }
//
//   _buildBody() {
//
//     if (deliveryBoy != null) {
//       return ListView(
//         children: <Widget>[
//           Container(
//             margin: Spacing.fromLTRB(24, 8, 24, 0),
//             child: InkWell(
//               onTap: () async {
//                 await Navigator.push(
//                     context,
//                     MaterialPageRoute(
//                         builder: (context) => EditProfileScreen()));
//                 _initUserData();
//               },
//               child: Row(
//                 children: <Widget>[
//                   ClipRRect(
//                     borderRadius: BorderRadius.all(
//                         Radius.circular(MySize.getScaledSizeWidth(24))),
//                     child: ImageUtils.getImageFromNetwork(deliveryBoy!.getAvatarUrl(),width: 48,height: 48),
//                   ),
//                   Container(
//                     margin: Spacing.left(16),
//                     child: Column(
//                       crossAxisAlignment: CrossAxisAlignment.start,
//                       children: <Widget>[
//                         Text(deliveryBoy!.name!,
//                             style: AppTheme.getTextStyle(
//                                 themeData!.textTheme.subtitle1,
//                                 fontWeight: 600,
//                                 letterSpacing: 0)),
//                         Text(deliveryBoy!.email!,
//                             style: AppTheme.getTextStyle(
//                                 themeData!.textTheme.caption,
//                                 fontWeight: 600,
//                                 letterSpacing: 0.3)),
//                       ],
//                     ),
//                   ),
//                   Expanded(
//                     child: Align(
//                       alignment: Alignment.centerRight,
//                       child: Container(
//                         child: Icon(
//                           MdiIcons.chevronRight,
//                           color: themeData!.colorScheme.onBackground,
//                         ),
//                       ),
//                     ),
//                   )
//                 ],
//               ),
//             ),
//           ),
//           Container(
//             margin: Spacing.fromLTRB(24, 40, 24, 0),
//             child: Row(
//               children: <Widget>[
//
//                 SizedBox(
//                   width: MySize.size16,
//                 ),
//                 Expanded(
//                   child: Container(
//                     padding: Spacing.all(16),
//                     decoration: BoxDecoration(
//                       color:
//                      deliveryBoy!.isOffline!
//                           ? customAppTheme.bgLayer2
//                           : themeData!.colorScheme.primary.withAlpha(60),
//                       border: Border.all(
//                           width: 1.2,
//                           color: deliveryBoy!.isOffline!
//                               ? customAppTheme.bgLayer4
//                               : themeData!.colorScheme.primary),
//                       borderRadius:
//                           BorderRadius.all(Radius.circular(MySize.size8!)),
//                     ),
//                     child: InkWell(
//
//                       onTap: () {
//                         print('ss${deliveryBoy!.isOffline!}');
//                         _changeStatus();
//                         print('sss${deliveryBoy!.isOffline!}');
//                       },
//                       child: Column(
//                         children: <Widget>[
//                           Icon(
//                             MdiIcons.mopedOutline,
//                             color: deliveryBoy!.isOffline!
//                                 ? themeData!.colorScheme.onBackground
//                                 : themeData!.colorScheme.primary,
//                           ),
//                           Container(
//                               margin: Spacing.top(8),
//                               child: Text(
//                                 deliveryBoy!.isOffline! ? Translator.translate("offline") : Translator.translate("online") ,
//                                 style: AppTheme.getTextStyle(
//                                     themeData!.textTheme.bodyText2,
//                                     fontWeight: 600,
//                                     color: deliveryBoy!.isOffline!
//                                         ? themeData!.colorScheme.onBackground
//                                         : themeData!.colorScheme.primary),
//                               )),
//                         ],
//                       ),
//                     ),
//                   ),
//                 ),
//                 SizedBox(
//                   width: MySize.size16,
//                 ),
//                 Expanded(
//                   child: InkWell(
//                     onTap: () {
//                       showDialog(
//                           context: context,
//                           builder: (BuildContext context) =>
//                               SelectThemeDialog());
//                     },
//                     child: Container(
//                       padding: Spacing.all(16),
//                       decoration: BoxDecoration(
//                         color: customAppTheme.bgLayer2,
//                         border: Border.all(
//                             width: 1.2, color: customAppTheme.bgLayer4),
//                         borderRadius:
//                             BorderRadius.all(Radius.circular(MySize.size8!)),
//                       ),
//                       child: Column(
//                         children: <Widget>[
//                           Icon(
//                             MdiIcons.eyeOutline,
//                             color: themeData!.colorScheme.onBackground,
//                           ),
//                           Container(
//                               margin: Spacing.top(8),
//                               child: Text(
//                                 "Theme",
//                                 style: AppTheme.getTextStyle(
//                                     themeData!.textTheme.bodyText2,
//                                     fontWeight: 600),
//                               ))
//                         ],
//                       ),
//                     ),
//                   ),
//                 ),
//               ],
//             ),
//           ),
//
//
//
//
//
//           Container(
//             margin: Spacing.top(32),
//             child: Center(
//               child: ElevatedButton(
//                 style: ButtonStyle(
//                     backgroundColor: MaterialStatePropertyAll(primaryColor),
//                     padding: MaterialStateProperty.all(Spacing.xy(24,12)),
//                     shape: MaterialStateProperty.all(RoundedRectangleBorder(
//                       borderRadius:  BorderRadius.circular(4),
//                     ))
//                 ),
//                 onPressed: () async {
//                   _changelog();
// // setState(() {
// //   deliveryBoy!.isOffline!=false;
// // });
// //                   bool status =true;
// //                   print(status);
// //
// //                   print(deliveryBoy!.isOffline!);
// //                   print('------------');
// //                   firestoreServices.updateIsOffline(deliveryBoy!,status );
//
//                   await AuthController.logoutUser();
//                   Navigator.pushReplacement(
//                     context,
//                     MaterialPageRoute(
//                       builder: (BuildContext context) => LoginScreen(),
//                     ),
//                   );
//                 },
//                 child: Row(
//                   mainAxisSize: MainAxisSize.min,
//                   children: [
//                     Icon(MdiIcons.logoutVariant,
//                         size: MySize.size20,
//                         color: themeData!.colorScheme.onPrimary),
//                     Container(
//                       margin: Spacing.left(16),
//                       child: Text(Translator.translate("logout").toUpperCase(),
//                           style: AppTheme.getTextStyle(
//                               themeData!.textTheme.caption,
//                               fontWeight: 600,
//                               color: themeData!.colorScheme.onPrimary,
//                               letterSpacing: 0.3)),
//                     ),
//                   ],
//                 ),
//               ),
//             ),
//           ),
//         ],
//       );
//     } else {
//       return Container();
//     }
//   }
//
//   void showMessage({String message = "Something wrong", Duration? duration}) {
//     if (duration == null) {
//       duration = Duration(seconds: 3);
//     }
//     _scaffoldMessengerKey.currentState!.showSnackBar(
//       SnackBar(
//         duration: duration,
//         content: Text(message,
//             style: AppTheme.getTextStyle(themeData!.textTheme.subtitle2,
//                 letterSpacing: 0.4, color: themeData!.colorScheme.onPrimary)),
//         backgroundColor: themeData!.colorScheme.primary,
//         behavior: SnackBarBehavior.fixed,
//       ),
//     );
//   }
// }
