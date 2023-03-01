import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:practice38_2/screens/employee_info_screen/widgets/row_info_card.dart';
import 'package:practice38_2/screens/phone_bottom_sheet_screen/phone_bottom_sheet_screen.dart';

class EmployeeInfoScreen extends StatelessWidget {
  final String name;
  final String surname;
  final String? patronymic;
  final String jobTitle;
  final String direction;
  final String departament;
  final String email;
  final String bDay;
  final String mainPhone;
  final String jobPhone;
  final String whatsAppPhone;
  final String image;

  const EmployeeInfoScreen({
    super.key,
    required this.name,
    required this.surname,
    this.patronymic,
    required this.jobTitle,
    required this.direction,
    required this.departament,
    required this.email,
    required this.bDay,
    required this.mainPhone,
    required this.jobPhone,
    required this.whatsAppPhone,
    required this.image,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white12,
        elevation: 0,
        leading: IconButton(
          splashRadius: 20,
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Center(
            child: Container(
              height: 114.r,
              width: 114.r,
              child: Image.asset(image),
            ),
          ),
          SizedBox(height: 18.h),
          Text(
            '$name $surname $patronymic',
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.black,
              fontSize: 20.sp,
              fontWeight: FontWeight.w500,
            ),
          ),
          SizedBox(height: 11.h),
          Center(
            child: Text(
              jobTitle,
              style: TextStyle(
                color: Colors.blue,
                fontSize: 16.sp,
              ),
            ),
          ),
          SizedBox(height: 39.h),
          RowInfoCard(
            title: 'Направление',
            subTitle: direction,
          ),
          RowInfoCard(
            title: 'Отдел',
            subTitle: departament,
          ),
          RowInfoCard(
            title: 'Email',
            subTitle: email,
          ),
          RowInfoCard(
            title: 'Дата рождения',
            subTitle: bDay,
          ),
          Column(
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
                          'Телефон основной',
                          style: TextStyle(
                            color: const Color(0xffA8A8A8),
                            fontSize: 12.sp,
                          ),
                        ),
                        Text(
                          mainPhone,
                          style: TextStyle(
                            fontSize: 16.sp,
                            fontWeight: FontWeight.w500,
                            color: Colors.black,
                          ),
                        ),
                      ],
                    ),
                    const Spacer(),
                    PhoneBottomSheet(
                      name: name,
                      surname: surname,
                      mainPhone: mainPhone,
                      jobPhone: jobPhone,
                      whatsAppPhone: whatsAppPhone,
                      patronymic: patronymic,
                    )
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
          ),
        ],
      ),
    );
  }
}
