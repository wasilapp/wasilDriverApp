import 'dart:developer';

import 'package:DeliveryBoyApp/views/auth/authControllernew.dart';
import 'package:country_picker/country_picker.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:image_picker/image_picker.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

import '../../../AppTheme.dart';
import '../../../controllers/AuthController.dart';
import '../../../custom_bakage.dart';
import '../../../models/app_user_models.dart';
import '../../../services/AppLocalizations.dart';
import '../../../utils/colors.dart';
import '../../../utils/ui/textfeild.dart';
import '../../order/order_view.dart';
import '../CategoryController.dart';
import '../login/LoginScreen.dart';
import '../shop_model.dart';

class EditProfileScreen extends StatefulWidget {


  @override
  State<EditProfileScreen> createState() => _EditProfileScreenState();
}

class _EditProfileScreenState extends State<EditProfileScreen> {
  //ThemeData
  late ThemeData themeData;
  late CustomAppTheme customAppTheme;

  //Text Field Editing Controller
  TextEditingController? mobile = TextEditingController();

  TextEditingController? nameArabic = TextEditingController();
  TextEditingController? distance = TextEditingController();
  TextEditingController? nameEnglish = TextEditingController();
  TextEditingController? password = TextEditingController();
  TextEditingController? profile = TextEditingController();
  TextEditingController? total = TextEditingController();


  int selectedCountryCode = 0;
  List<PopupMenuEntry<Object>>? countryList;
  List<dynamic> countryCode = TextUtils.countryCode;

  //Global Keys
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();
  final GlobalKey<FormState>formState = new GlobalKey<FormState>();
  final GlobalKey<ScaffoldMessengerState> _scaffoldMessengerKey = new GlobalKey<
      ScaffoldMessengerState>();

  //Other Variables
  late bool isInProgress;
  bool showPassword = false;
  String contrycode = "962";

  //UI Variables


  File? profilePic;
  File? licencePic;


  final picker = ImagePicker();

  Future getImageFromGallery() async {
    final pickedFile = await picker.pickImage(source: ImageSource.gallery);

    setState(() {
      if (pickedFile != null) {
        profilePic = File(pickedFile.path);
      } else {
        print('No image selected.');
      }
    });
  }

  getImageFromCamera() async {
    final pickedFile = await picker.pickImage(source: ImageSource.camera);

    setState(() {
      if (pickedFile != null) {
        profilePic = File(pickedFile.path);
      } else {
        print('No image selected.');
      }
    });
  }

  Future getImageLicenseFromGallery() async {
    final pickedFile = await picker.pickImage(source: ImageSource.gallery);

    setState(() {
      if (pickedFile != null) {
        licencePic = File(pickedFile.path);
      } else {
        print('No image selected.');
      }
    });
  }

  getImageLicenseFromCamera() async {
    final pickedFile = await picker.pickImage(source: ImageSource.camera);

    setState(() {
      if (pickedFile != null) {
        licencePic = File(pickedFile.path);
      } else {
        print('No image selected.');
      }
    });
  }


  AuthControllerr authController =Get.put(AuthControllerr());

  List errorMessages = [];
  List cat = [];
  Categories? selectedCategory;
  ShopsModel? selectedShop;



  @override
  Widget build(BuildContext context) {
    CategoryController controller=Get.put(CategoryController());
    return Consumer<AppThemeNotifier>(
        builder: (BuildContext context, AppThemeNotifier value, Widget? child) {
      int themeType = value.themeMode();
      themeData = AppTheme.getThemeFromThemeMode(themeType);
      customAppTheme = AppTheme.getCustomAppTheme(themeType);
      nameArabic?.text=appUserData.data!.deliveryBoy!.name!.ar.toString();
   total?.text=appUserData.data!.deliveryBoy!.totalCapacity!.toString();
      mobile?.text=appUserData.data!.deliveryBoy!.mobile!.toString();
      distance?.text=appUserData.data!.deliveryBoy!.distance!.toString();


    return SafeArea(child: Scaffold(
      appBar: AppBar(title: Text('',style: TextStyle(color: Colors.black,
          fontWeight: FontWeight.w700)),centerTitle: true,

          shape: RoundedRectangleBorder(borderRadius: BorderRadius.only(bottomRight: Radius.circular(10),bottomLeft: Radius.circular(10)))),

      body:

      Form(key:formState ,child:
         SingleChildScrollView(
           child: Column(
              children: [
            SizedBox(height: 30,),
            LogoAsset(),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Align(alignment: Alignment.topLeft,

                child: Text(
                  Translator.translate("Edit profile").toUpperCase(),
                  style: boldPrimary,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20.0,right: 20),
              child: Row(
                children: [
                  ElevatedButton(
                    onPressed: () {
                      showCountryPicker(
                        context: context,
                        //Optional.  Can be used to exclude(remove) one ore more country from the countries list (optional).
                        exclude: <String>['KN', 'MF'],
                        favorite: <String>['SE'],
                        //Optional. Shows phone code before the country name.
                        showPhoneCode: true,
                        onSelect: (Country country) {
                          setState(() {
                            contrycode = country.phoneCode;
                          });
                          log('Select country: $contrycode');
                        },
                        // Optional. Sets the theme for the country list picker.
                        countryListTheme: CountryListThemeData(
                          // Optional. Sets the border radius for the bottomsheet.
                          borderRadius: const BorderRadius.only(
                            topLeft: Radius.circular(40.0),
                            topRight: Radius.circular(40.0),
                          ),
                          // Optional. Styles the search field.
                          inputDecoration: InputDecoration(
                            labelText: 'Search',
                            hintText: 'Start typing to search',
                            prefixIcon: const Icon(Icons.search),
                            border: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: const Color(0xFF8C98A8)
                                    .withOpacity(0.2),
                              ),
                            ),
                          ),
                          // Optional. Styles the text in the search field
                          searchTextStyle: const TextStyle(
                            color: Colors.green,
                            fontSize: 18,
                          ),
                        ),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                        backgroundColor: primaryColor),
                    child: Text(contrycode,
                        style: const TextStyle(color: Colors.white)),
                  ),
                  Spacing.width(8),
                  Expanded(
                      child: CustomTextField(
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please enter your mobile number';
                          }
                      
                        },
                        hintText: 'mobile Number',
                        controller: mobile!,
                        prefixIconData: Icon(Icons.phone_android),
                        keyBoard: TextInputType.number,
                      )),
                ],
              ),
            ),


            // CustomTextField(
            //   validator: (value) {
            //     if (value == null || value.isEmpty) {
            //       return 'Please enter your   Name English';
            //     }
            //     if (!RegExp(r'^[a-zA-Z]+$').hasMatch(value!)) {
            //       return 'please only character in English';
            //     }
            //   },
            //   keyBoard: TextInputType.text,
            //   controller: nameEnglish!,
            //   hintText: Translator.translate(" name in English"),
            //   prefixIconData: Icon(Icons.person_2_outlined),
            //   onPrefixIconPress: () {
            //     setState(() {});
            //   },
            // ),
            CustomTextField(
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter your shop Name Arabic';
                }
                if (!RegExp(r'^[؀-ۿ\s]+$').hasMatch(value!)) {
                  return 'please only character in Arabic';
                }
              },
              keyBoard: TextInputType.text,
              controller: nameArabic!,
              hintText: Translator.translate(" name in arabic"),
              prefixIconData: Icon(Icons.person_2_outlined),
              onPrefixIconPress: () {
                setState(() {});
              },
            ),

                CustomTextField(

              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter your  password';
                }

              },
              keyBoard: TextInputType.number,
              controller: distance!,

              hintText: Translator.translate("distance"),
              prefixIconData: Icon(Icons.social_distance_outlined),

            ),
                CustomTextField(

              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter your  password';
                }

              },
              keyBoard: TextInputType.number,
              controller: total!,

              hintText: Translator.translate("total"),
              prefixIconData: Icon(Icons.social_distance_outlined),

            ),
               SizedBox(height: 20,),
                CommonViews().createButton(
                  title: 'update profile',onPressed: () async {
                  if(formState.currentState!.validate()){
                    print('k');
        authController.updateUser(mobile:contrycode.toString()+ mobile!.text,password: password!.text,distance: distance!.text,nameAr: nameArabic!.text,nameEn: nameEnglish!.text);

                  }},),
            // CircleAvatar(backgroundImage: NetworkImage,)
        ]),
         ),
      ),
    ));});
  }
}
