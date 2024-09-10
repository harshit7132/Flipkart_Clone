import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ui_clone/domain/app_color_constants/app_color_constant.dart';
import 'package:ui_clone/domain/app_constants/app_constants.dart';
import 'package:ui_clone/domain/ui_helper/ui_helper.dart';
import 'package:ui_clone/presentation/landing_screens/login&otp_screen.dart';

import '../home_screen/home_screen.dart';

class LanguageScreen extends StatefulWidget {
  const LanguageScreen({super.key});

  @override
  State<LanguageScreen> createState() => _LanguageScreenState();
}

class _LanguageScreenState extends State<LanguageScreen> {
  int? selectedLanguageIndex;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColorConstant.bg_color,
      appBar: _buildAppBar(),
      body: _buildBody(),
      bottomSheet: _buildBottomNavigationBar(),
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
          child:
              Text('Skip', style: UiHelper.mTextStyle16(color: Colors.white)),
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
      Colors.white38,
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
            color: Colors.white38,
          ),
        ),
        itemBuilder: (context, index) {
          return CircleAvatar(
            backgroundColor: colors[index],
            radius: 14.r,
            child: CircleAvatar(
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
                color: Colors.white, fontWeight: FontWeight.normal),
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
                color: Colors.white, fontWeight: FontWeight.normal),
          ),
        ],
      ),
    );
  }

  Widget _buildBody() {
    return Container(
      height: double.infinity,
      width: double.infinity,
      padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 10.h),
      margin: EdgeInsets.only(bottom: 70.w),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topRight: Radius.circular(20.r),
          topLeft: Radius.circular(20.r),
        ),
      ),
      child: Column(
        children: [
          SizedBox(
            height: 10.h,
          ),
          _buildLanguageSelectionHeader(),
          SizedBox(
            height: 5.h,
          ),
          _buildLanguageListSection(),
        ],
      ),
    );
  }

  ////////body section/////////

  Widget _buildLanguageSelectionHeader() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          'Choose Your Language',
          style: UiHelper.mTextStyle16(fontWeight: FontWeight.normal),
        ),
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
            style: UiHelper.mTextStyle16(
              fontWeight: FontWeight.normal,
              color: AppColorConstant.bg_color,
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildLanguageListSection() {
    return Expanded(
      child: ListView.builder(
        itemCount: AppConstants.languageData.length,
        itemBuilder: (context, index) {
          final language = AppConstants.languageData[index];
          return Container(
            margin: EdgeInsets.symmetric(vertical: 10.h),
            height: 70.h,
            width: double.infinity,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10.r),
              border: Border.all(color: Colors.grey.shade400),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Checkbox(
                      value: selectedLanguageIndex == index,
                      onChanged: (value) {
                        setState(() {
                          selectedLanguageIndex = index;
                        });
                      },
                      activeColor: Colors.blue,
                      shape: const CircleBorder(
                        side: BorderSide(
                          color: Colors.white10,
                        ),
                      ),
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          language.nativeName,
                          style: UiHelper.mTextStyle20(),
                        ),
                        Text(
                          language.englishName,
                          style: UiHelper.mTextStyle16(
                              color: Colors.grey,
                              fontWeight: FontWeight.normal),
                        ),
                      ],
                    ),
                  ],
                ),
                Align(
                  alignment: Alignment.centerRight,
                  child: Padding(
                    padding: EdgeInsets.only(top: 15.h),
                    child: Container(
                      width: 120.w,
                      margin: EdgeInsets.only(right: 10.w),
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage(
                            language.imageUrl,
                          ),
                          fit: BoxFit.contain,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }

  //////////////////bottom nav section////////////////////
  Widget _buildBottomNavigationBar() {
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
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => LoginScreen(),
                ),
              );
            },
            child: Text(
              'CONTINUE',
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
