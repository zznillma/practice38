import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:practice38_2/screens/phone_bottom_sheet_screen/phone_bottom_sheet_screen.dart';

class RowInfoCard extends StatelessWidget {
  final String title;
  final String subTitle;
  final bool? isPhone;
  final String? name;
  final String? surname;
  final String? patronymic;
  final String? mainPhone;
  final String? jobPhone;
  final String? whatsAppPhone;

  const RowInfoCard({
    super.key,
    required this.title,
    required this.subTitle,
    this.isPhone = false,
    this.name,
    this.surname,
    this.patronymic,
    this.mainPhone,
    this.jobPhone,
    this.whatsAppPhone,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(
            left: 23,
            right: 21,
          ).r,
          child: Row(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: TextStyle(
                      color: const Color(0xffA8A8A8),
                      fontSize: 12.sp,
                    ),
                  ),
                  Text(
                    subTitle,
                    style: TextStyle(
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w500,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
        SizedBox(height: 14.h),
        Container(
          width: 1.sw,
          height: 1.h,
          color: const Color(0xffDEE1E5),
        ),
        SizedBox(height: 14.h),
      ],
    );
  }
}
