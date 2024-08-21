import 'package:flutter_advanced_switch/flutter_advanced_switch.dart';
import 'package:flutter_carousel_widget/flutter_carousel_widget.dart';
import 'package:ui_clone/domain/app_imports/app_imports.dart';

class BottomHomeScreen extends StatefulWidget {
  const BottomHomeScreen({super.key});
  @override
  State<BottomHomeScreen> createState() => _BottomHomeScreenState();
}

class _BottomHomeScreenState extends State<BottomHomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: _buildAppBar(),
      body: _buildBody(),
    );
  }

  AppBar _buildAppBar() {
    return AppBar(
      elevation: 0,
      backgroundColor: Colors.blue.shade100,
      automaticallyImplyLeading: false,
      title: _buildAppBarTitle(),
      bottom: PreferredSize(
        preferredSize: Size(double.infinity, 60.h),
        child: _buildAppBarBottom(),
      ),
    );
  }

  Widget _buildAppBarTitle() {
    return Row(
      children: [
        Image.asset('assets/images/logo.png', height: 35.h),
        Text('Flipkart',
            style: TextStyle(
                fontFamily: 'rio',
                color: Colors.blue.shade800,
                fontSize: 22.sp)),
      ],
    );
  }

  Widget _buildAppBarBottom() {
    return Container(
      color: Colors.blue.shade100,
      height: 55.h,
      padding: EdgeInsets.symmetric(horizontal: 20.r, vertical: 5.r),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Column(
            children: [
              Text(
                'Brand Mall',
                style: UiHelper.mTextStyle12(
                    fontWeight: FontWeight.normal, color: Colors.grey.shade800),
              ),
              AdvancedSwitch(
                activeColor: Colors.blue,
                inactiveColor: Colors.grey,
                activeChild: Text(
                  'ON',
                  style: UiHelper.mTextStyle12(
                      fontWeight: FontWeight.normal, color: Colors.black),
                ),
                inactiveChild: Text(
                  'OFF',
                  style: UiHelper.mTextStyle12(
                      fontWeight: FontWeight.normal, color: Colors.black),
                ),
                borderRadius: const BorderRadius.all(Radius.circular(15)),
                width: 60.w,
                height: 18.h,
                enabled: true,
                disabledOpacity: 0.5,
              ),
            ],
          ),
          SizedBox(
            width: 240.w,
            height: 40.h,
            child: TextField(
              textAlign: TextAlign.center,
              decoration: InputDecoration(
                fillColor: Colors.white,
                filled: true,
                alignLabelWithHint: true,
                hintText: 'Search Here!',
                prefixIcon: const Icon(
                  Icons.search,
                ),
                suffixIconColor: Colors.grey,
                prefixIconColor: Colors.grey,
                suffixIcon: SizedBox(
                  width: 80.w,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      const Icon(Icons.mic_none_rounded),
                      SizedBox(width: 10.w),
                      const Icon(Icons.camera_alt_outlined),
                      SizedBox(width: 10.w),
                    ],
                  ),
                ),
                focusedBorder: const OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.blue),
                ),
              ),
              cursorColor: Colors.blue,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildBody() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 10.w),
      child: ListView(
        children: [
          _buildSliderSection(),
          SizedBox(height: 5.h),
          _buildCategorySection(),
          SizedBox(height: 15.h),
          _buildCatBottomSection(),
          SizedBox(height: 5.h),
          _buildDivider(),
          _buildRecentlyViewedSection(),
          _buildDivider(),
        ],
      ),
    );
  }

  Widget _buildSliderSection() {
    return SizedBox(
      width: double.infinity,
      child: FlutterCarousel(
        options: CarouselOptions(
          height: 160.h,
          showIndicator: true,
          slideIndicator: CircularSlideIndicator(
            slideIndicatorOptions: SlideIndicatorOptions(
              itemSpacing: 15,
              indicatorRadius: 5.r,
              indicatorBackgroundColor: Colors.grey.shade400,
            ),
          ),
          viewportFraction: 1,
        ),
        items: AppConstants.sliderData.map(_buildSliderItem).toList(),
      ),
    );
  }

  Widget _buildSliderItem(String imagePath) {
    return Builder(
      builder: (BuildContext context) {
        return Container(
          width: MediaQuery.of(context).size.width,
          margin: EdgeInsets.only(top: 10.h, right: 10.w),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10.sp),
            image: DecorationImage(
                image: AssetImage(imagePath), fit: BoxFit.cover),
          ),
        );
      },
    );
  }

  Widget _buildCategorySection() {
    return SizedBox(
      height: 80.h,
      child: ListView.builder(
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        itemCount: AppConstants.categoriesData.length,
        itemBuilder: (context, index) => SizedBox(
          width: 70.w,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              CircleAvatar(
                radius: 22.sp,
                backgroundImage: NetworkImage(
                  AppConstants.categoriesData[index]['Image'],
                ),
              ),
              Text(
                textAlign: TextAlign.center,
                AppConstants.categoriesData[index]['name'],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildCatBottomSection() {
    return SizedBox(
      height: 110.h,
      child: ListView.builder(
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        physics: const NeverScrollableScrollPhysics(),
        itemCount: AppConstants.catBottomData.length,
        itemBuilder: (context, index) => Padding(
          padding: EdgeInsets.symmetric(horizontal: 5.r),
          child: Container(
            decoration: BoxDecoration(
              color: Colors.white,
              border: Border.all(color: Colors.grey.shade300),
              borderRadius: BorderRadius.circular(5.r),
            ),
            width: 105.w,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  height: 70.h,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    image: DecorationImage(
                      image: NetworkImage(
                        AppConstants.catBottomData[index]['image'],
                      ),
                      fit: BoxFit.contain,
                    ),
                  ),
                ),
                SizedBox(
                  height: 2.h,
                ),
                Text(
                  textAlign: TextAlign.center,
                  AppConstants.catBottomData[index]['title'],
                  style: UiHelper.mTextStyle12(fontWeight: FontWeight.normal),
                ),
                Text(
                  textAlign: TextAlign.center,
                  AppConstants.catBottomData[index]['price'],
                  style: UiHelper.mTextStyle14(),
                ),
                SizedBox(
                  height: 2.h,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildDivider() {
    return Divider(
      thickness: 3.h,
      color: Colors.grey.shade300,
    );
  }

  Widget _buildRecentlyViewedSection() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(height: 5.h,),
        Text(
          'Recently Viewed Stores',
          style: UiHelper.mTextStyle18(fontWeight: FontWeight.w600),
        ),
        SizedBox(
          height: 10.h,
        ),
        SizedBox(
          height: 130.h,
          width: 400.w,
          child: ListView.builder(
            padding: EdgeInsets.zero,
            itemCount: AppConstants.recentlyViewedItems.length,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) => Container(
              margin: EdgeInsets.only(right: 12.w),
              width: 100.w,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.grey.shade700),
                borderRadius: BorderRadius.circular(5.r),
              ),
              child: Column(
                children: [
                  Image.network(
                    AppConstants.recentlyViewedItems[index]['image'],
                    height: 90.h,
                  ),
                  SizedBox(
                    height: 5.h,
                  ),
                  Text(
                    AppConstants.recentlyViewedItems[index]['title'],
                    textAlign: TextAlign.center,
                    style: UiHelper.mTextStyle12(
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
