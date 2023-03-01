import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:practice38_2/models/employee_model.dart';

class ListViewCard extends StatelessWidget {
  const ListViewCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 60.h,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        itemCount: employeeModel.length,
        itemBuilder: (context, index) {
          return Container(
            height: 60.r,
            width: 60.r,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30.r),
              border: Border.all(
                width: 2.w,
                color: Colors.blue,
              ),
            ),
            child: Image.asset(employeeModel[index].image),
          );
        },
        separatorBuilder: (context, index) {
          return SizedBox(width: 19.w);
        },
      ),
    );
  }
}
