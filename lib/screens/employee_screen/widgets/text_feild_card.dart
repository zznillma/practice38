import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TextFieldCard extends StatelessWidget {
  const TextFieldCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 42.h,
      width: 328.w,
      child: TextField(
        decoration: InputDecoration(
          filled: true,
          fillColor: const Color(0xffE8E8E8),
          prefixIcon: const Icon(
            Icons.search,
            color: Color(0xff757575),
          ),
          label: const Text(
            'Поиск',
            style: TextStyle(
              color: Color(0xff757575),
            ),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10).r,
            borderSide: const BorderSide(
              color: Colors.transparent,
            ),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10).r,
            borderSide: const BorderSide(
              color: Colors.grey,
            ),
          ),
        ),
      ),
    );
  }
}
