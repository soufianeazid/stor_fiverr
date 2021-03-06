import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_stor/core/provider/theme_provider.dart';
import 'package:flutter_stor/util/style.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_stor/widgets/custom_bottom_sheet.dart';

import 'package:provider/provider.dart';

class CustomAnimatedBottomBar extends StatelessWidget {
  CustomAnimatedBottomBar({
    //this.systemNavigationBarColor = Colors.transparent,
    Key? key,
    this.selectedIndex = 0,
    this.showElevation = true,
    this.iconSize = 24,
    this.backgroundColor,
    this.itemCornerRadius = 50,
    this.containerHeight = 56,
    this.animationDuration = const Duration(milliseconds: 270),
    this.mainAxisAlignment = MainAxisAlignment.spaceAround,
    required this.items,
    required this.onItemSelected,
    this.curve = Curves.linear,
    //required this.customIcon,
  })  : assert(items.length >= 2 && items.length <= 6),
        super(key: key);

  final int selectedIndex;
  final double iconSize;
  final Color? backgroundColor;
  final bool showElevation;
  final Duration animationDuration;
  final List<BottomNavyBarItem> items;
  final ValueChanged<int> onItemSelected;
  final MainAxisAlignment mainAxisAlignment;
  final double itemCornerRadius;
  final double containerHeight;
  final Curve curve;

  @override
  Widget build(BuildContext context) {
    var provider = context.watch<Themeprov>();
    //final bgColor = backgroundColor ?? Theme.of(context).bottomAppBarColor;

    return Padding(
      padding: EdgeInsets.only(left: 31.w, right: 31.w, bottom: 17.h),
      child: SafeArea(
        child: Stack(
          children: [
            Container(
              width: double.infinity,
              height: 70.h,
              padding: EdgeInsets.symmetric(vertical: 10.h, horizontal: 8.w),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15.r),
                color: provider.mymode ? Style.k7aljdid : Style.whiteColor,
                boxShadow: [
                  if (showElevation)
                    const BoxShadow(
                      color: Colors.black12,
                      blurRadius: 2,
                    ),
                ],
              ),
              child: Row(
                mainAxisAlignment: mainAxisAlignment,
                children: items.map((item) {
                  var index = items.indexOf(item);
                  return GestureDetector(
                    onTap: () => onItemSelected(index),
                    child: _ItemWidget(
                      item: item,
                      iconSize: iconSize,
                      isSelected: index == selectedIndex,
                      backgroundColor: Colors.transparent,
                      itemCornerRadius: itemCornerRadius,
                      animationDuration: animationDuration,
                      curve: curve,
                    ),
                  );
                }).toList(),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 138.w, vertical: 9.h),
              child: InkWell(
                onTap: () {
                  showModalBottomSheet(
                          elevation: 100,
                          backgroundColor:
                              provider.mymode ? Style.dark : Style.whiteColor,
                          shape: RoundedRectangleBorder(
                             borderRadius: BorderRadius.only(topLeft:Radius.circular(22.r),topRight:Radius.circular(22.r), ),
                          ),
                          context: context,
                          builder: (context) {
                            return CustomBottomSeet();
                          });
                },
                child: Container(
                  height: 38.h,
                  width: 38.w,
                  decoration: BoxDecoration(
                      color: Style.primaryColor, shape: BoxShape.circle),
                  child: Icon(
                    Icons.add,
                    size: 16.sp,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _ItemWidget extends StatelessWidget {
  final double iconSize;
  final bool isSelected;

  final BottomNavyBarItem item;
  final Color backgroundColor;
  final double itemCornerRadius;
  final Duration animationDuration;
  final Curve curve;

  const _ItemWidget({
    Key? key,
    required this.item,
    required this.isSelected,
    required this.backgroundColor,
    required this.animationDuration,
    required this.itemCornerRadius,
    required this.iconSize,
    this.curve = Curves.linear,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Semantics(
      container: true,
      selected: isSelected,
      child: AnimatedContainer(
        width: isSelected ? 80.w : 50.w,
        height: 35.h,
        duration: animationDuration,
        curve: curve,
        decoration: BoxDecoration(
          color:
              isSelected ? item.activeColor.withOpacity(0.2) : backgroundColor,
          borderRadius: BorderRadius.circular(itemCornerRadius),
        ),
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          physics: NeverScrollableScrollPhysics(),
          child: Container(
            width: isSelected ? 80.w : 50.w,
            padding: EdgeInsets.symmetric(horizontal: 5.w),
            child: Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                IconTheme(
                  data: IconThemeData(
                    size: iconSize,
                    color: isSelected
                        ? item.activeColor.withOpacity(1)
                        : item.inactiveColor == null
                            ? item.activeColor
                            : item.inactiveColor,
                  ),
                  child: item.icon,
                ),
                if (isSelected)
                  Expanded(
                    child: Container(
                      padding: EdgeInsets.symmetric(horizontal: 5.w),
                      child: DefaultTextStyle.merge(
                        style: TextStyle(
                          color: item.activeColor,
                          fontWeight: FontWeight.bold,
                        ),
                        maxLines: 1,
                        textAlign: item.textAlign,
                        child: item.title,
                      ),
                    ),
                  ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class BottomNavyBarItem {
  BottomNavyBarItem({
    required this.icon,
    required this.title,
    this.activeColor = Colors.blue,
    this.textAlign,
    this.inactiveColor,
  });

  final Widget icon;
  final Widget title;
  final Color activeColor;
  final Color? inactiveColor;
  final TextAlign? textAlign;
}
