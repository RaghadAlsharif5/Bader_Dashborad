import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:bader_dashboard/view_model/dashboard_cubit/dashboard_cubit.dart';

PreferredSizeWidget appBarForClubsScreen(
    {required DashBoardCubit DashBoardCubit, required BuildContext context}) {
  return AppBar(
      title: DashBoardCubit.searchEnabled
          ? TextField(
              style: TextStyle(color: Colors.white),
              onChanged: (input) {
                DashBoardCubit.searchAboutClub(input: input);
              },
              decoration: InputDecoration(
                  hintText: 'ادخل اسم النادي ....',
                  hintStyle: TextStyle(color: Colors.white, fontSize: 15.sp),
                  border: InputBorder.none),
            )
          : const Text("الرئيسية"),
      actions: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 10.w),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              GestureDetector(
                onTap: () {
                  DashBoardCubit.changeSearchAboutClubStatus();
                },
                child: DashBoardCubit.searchEnabled
                    ? const Icon(Icons.clear)
                    : const Icon(Icons.search),
              ),
            ],
          ),
        ),
      ]);
}
