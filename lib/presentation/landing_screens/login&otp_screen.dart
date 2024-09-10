import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:phone_input/phone_input_package.dart';
import 'package:pinput/pinput.dart';
import 'package:ui_clone/domain/app_color_constants/app_color_constant.dart';
import 'package:ui_clone/domain/ui_helper/ui_helper.dart';

import '../home_screen/home_screen.dart';

class LoginScreen extends StatefulWidget {
  LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool isOtp = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColorConstant.bg_color,
      appBar: _buildAppBar(),
      body: _buildBody(),
      bottomSheet: _buildBottomNavigationBar(context),
    );
  }

  PreferredSizeWidget _buildAppBar() {
    return AppBar(
      elevation: 0,
      backgroundColor: AppColorConstant.bg_color,
      title: Image.asset('assets/images/logo_home.jpg', height: 70.h),
      centerTitle: true,
      actions: [
        TextButton(
          onPressed: () {
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(
                builder: (context) => const Bottom_Nav_Page(),
              ),
            );
          },
          child: Text(
            'Skip',
            style: UiHelper.mTextStyle16(color: Colors.white),
          ),
        ),
      ],
      bottom: PreferredSize(
        preferredSize: Size.fromHeight(80.h),
        child: _buildAppBarBottom(),
      ),
    );
  }

  Widget _buildAppBarBottom() {
    return SizedBox(
      height: 80.h,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          _buildStepIndicator(),
          _buildStepLabels(),
        ],
      ),
    );
  }

  Widget _buildStepIndicator() {
    final steps = ['1', '2', '3'];
    final colors = [
      Colors.white,
      Colors.white,
      Colors.white38,
    ];
    return SizedBox(
      height: 30.h,
      child: ListView.separated(
        padding: EdgeInsets.symmetric(horizontal: 50.w),
        scrollDirection: Axis.horizontal,
        itemCount: steps.length,
        separatorBuilder: (context, index) => SizedBox(
          width: 90.w,
          child: Divider(
            thickness: 1,
            color: index == 0 ? Colors.white : Colors.white38,
          ),
        ),
        itemBuilder: (context, index) {
          return CircleAvatar(
            backgroundColor: colors[index],
            radius: 14.r,
            child: index == 0
                ? CircleAvatar(
                    radius: 12.r,
                    backgroundColor: Colors.white,
                    child: Icon(
                      Icons.check,
                      size: 20.sp,
                    ),
                  )
                : CircleAvatar(
                    radius: 12.r,
                    child: Text(
                      steps[index],
                      style: UiHelper.mTextStyle12(color: Colors.white),
                    ),
                  ),
          );
        },
      ),
    );
  }

  Widget _buildStepLabels() {
    return SizedBox(
      width: 300.w,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            'Launguages',
            style: UiHelper.mTextStyle12(
                color: Colors.white38, fontWeight: FontWeight.normal),
          ),
          SizedBox(
            width: 2.w,
          ),
          Text(
            'Login',
            style: UiHelper.mTextStyle12(
                color: Colors.white, fontWeight: FontWeight.normal),
          ),
          SizedBox(
            width: 10.w,
          ),
          Text(
            'Welcome',
            style: UiHelper.mTextStyle12(
                color: Colors.white38, fontWeight: FontWeight.normal),
          ),
        ],
      ),
    );
  }

  Widget _buildBody() {
    return Container(
      height: double.infinity,
      width: double.infinity,
      padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 20.h),
      margin: EdgeInsets.only(bottom: 70.w),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topRight: Radius.circular(20.r),
          topLeft: Radius.circular(20.r),
        ),
      ),
      child: isOtp ? _buildOtpElements() : _buildPhoneElemants(),
    );
  }

  //////phone body/////
  Widget _buildPhoneElemants() {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 10.h,
          ),
          Text(
            'Login to get started',
            style: UiHelper.mTextStyle18(fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 40.h,
          ),
          _buildPhoneInput(),
          SizedBox(
            height: 10.h,
          ),
          _buildEmailOption(),
          SizedBox(
            height: 40.h,
          ),
          _buildTruecallerButton(),
          SizedBox(
            height: 30.h,
          ),
          _buildTermsAndPrivacy(),
        ],
      ),
    );
  }

  Widget _buildPhoneInput() {
    return PhoneInput(
      cursorColor: Colors.blue,
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(5.r),
        ),
        labelText: 'Phone Number',
        focusedBorder: const OutlineInputBorder(
          borderSide: BorderSide(color: Colors.blue),
        ),
        enabledBorder: const OutlineInputBorder(
          borderSide: BorderSide(color: Colors.blue),
        ),
        labelStyle: UiHelper.mTextStyle14(
            fontWeight: FontWeight.normal, color: Colors.blue),
      ),
      countrySelectorNavigator: CountrySelectorNavigator.dropdown(
        flagSize: 40.w,
        layerLink: LayerLink(),
        listHeight: kToolbarHeight * 7,
        backgroundColor: Colors.white,
        countryNameStyle: UiHelper.mTextStyle16(),
      ),
    );
  }

  Widget _buildEmailOption() {
    return Align(
      alignment: Alignment.centerRight,
      child: TextButton(
        onPressed: () {
          // TODO: Implement email login option
        },
        child: Text(
          'Use Email-ID',
          style: UiHelper.mTextStyle16(
            color: Colors.blue,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
    );
  }

  Widget _buildTruecallerButton() {
    return OutlinedButton(
      onPressed: () {
        // TODO: Implement Truecaller login
      },
      style: OutlinedButton.styleFrom(
        minimumSize: Size(double.infinity, 50.h),
        side: const BorderSide(
          color: Colors.blue,
          width: 2,
        ),
      ),
      child: Text(
        'Login Using Truecaller',
        style: UiHelper.mTextStyle16(
            fontWeight: FontWeight.w500, color: Colors.blue),
      ),
    );
  }

  Widget _buildTermsAndPrivacy() {
    return RichText(
      text: TextSpan(
          children: [
            TextSpan(
                text: 'Terms of Use',
                style: UiHelper.mTextStyle12(
                  color: Colors.blue,
                )),
            TextSpan(
                text: ' and ',
                style: UiHelper.mTextStyle12(color: Colors.grey)),
            TextSpan(
                text: 'Privacy Policy',
                style: UiHelper.mTextStyle12(
                  color: Colors.blue,
                )),
          ],
          text: 'By Continuing, you agree to Flipkart\'s ',
          style: UiHelper.mTextStyle12(color: Colors.grey)),
    );
  }
  //////phone body ends/////

  //////otp body/////
  Widget _buildOtpElements() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          height: 10.h,
        ),
        RichText(
            text: TextSpan(
                text:
                    'Please enter the verification code we\'ve sent you on +91-0000000000 ',
                style: UiHelper.mTextStyle18(fontWeight: FontWeight.normal),
                children: [
              TextSpan(
                text: ' Edit',
                style: UiHelper.mTextStyle14(color: Colors.blue),
              )
            ])),

        SizedBox(
          height: 30.h,
        ),

        ///pinput
        Pinput(
          length: 6,
          cursor: Container(
            color: Colors.blue,
            height: 30.h,
            width: 2.w,
          ),
          defaultPinTheme: const PinTheme(
            width: 56,
            height: 56,
            textStyle: TextStyle(fontSize: 20, color: Colors.black),
            decoration: BoxDecoration(
              border: Border(
                bottom: BorderSide(color: Colors.blue, width: 2),
              ),
            ),
          ),
          focusedPinTheme: const PinTheme(
            width: 56,
            height: 56,
            textStyle: TextStyle(fontSize: 20, color: Colors.black),
            decoration: BoxDecoration(
              border: Border(
                bottom: BorderSide(color: Colors.blueAccent, width: 2),
              ),
            ),
          ),
        ),

        SizedBox(
          height: 30.h,
        ),

        Padding(
          padding: EdgeInsets.only(left: 20.w),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Trying to Auto Capture',
                style: UiHelper.mTextStyle14(fontWeight: FontWeight.normal),
              ),
              Text(
                '00:11',
                style: UiHelper.mTextStyle14(),
              ),
            ],
          ),
        ),

        SizedBox(
          height: 40.h,
        ),

        _buildTruecallerButton()
      ],
    );
  }

  Widget _buildBottomNavigationBar(BuildContext context) {
    return Material(
      elevation: 10,
      shadowColor: Colors.black,
      child: Container(
        margin: EdgeInsets.zero,
        padding: EdgeInsets.zero,
        color: Colors.white,
        height: 70.h,
        width: double.infinity,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.grey,
              minimumSize: Size(0.h, 50.w),
            ),
            onPressed: isOtp
                ? () {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const Bottom_Nav_Page(),
                      ),
                    );
                  }
                : () {
                    setState(() {
                      isOtp = true;
                    });
                  },
            child: Text(
              isOtp ? 'Verify' : 'CONTINUE',
              style: UiHelper.mTextStyle18(
                color: Colors.white,
                fontWeight: FontWeight.normal,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
