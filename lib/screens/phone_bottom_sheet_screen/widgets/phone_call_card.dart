import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PhoneCallCard extends StatelessWidget {
  final String title;
  final String phone;
  final Function() onTap;

  const PhoneCallCard({
    super.key,
    required this.phone,
    required this.title,
    required this.onTap,
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
                    phone,
                    style: TextStyle(
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w500,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
              const Spacer(),
              IconButton(
                splashRadius: 20,
                onPressed: onTap,
                icon: const Icon(
                  Icons.phone,
                  color: Colors.green,
                ),
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
