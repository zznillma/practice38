import 'package:flutter/material.dart';
import 'package:flutter_phone_direct_caller/flutter_phone_direct_caller.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:practice38_2/models/employee_model.dart';
import 'package:practice38_2/screens/phone_bottom_sheet_screen/widgets/phone_call_card.dart';

class PhoneBottomSheet extends StatelessWidget {
  final String name;
  final String surname;
  final String? patronymic;
  final String mainPhone;
  final String jobPhone;
  final String whatsAppPhone;

  const PhoneBottomSheet({
    Key? key,
    required this.name,
    required this.surname,
    this.patronymic,
    required this.mainPhone,
    required this.jobPhone,
    required this.whatsAppPhone,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        showModalBottomSheet(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
          context: context,
          builder: (context) {
            return Container(
              height: 0.5.sh,
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(
                      left: 23,
                      top: 30,
                      right: 22,
                    ).r,
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Text(
                              'Позвонить',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 20.sp,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            const Spacer(),
                            InkWell(
                              onTap: () {
                                Navigator.pop(context);
                              },
                              child: Container(
                                height: 30.r,
                                width: 30.r,
                                decoration: BoxDecoration(
                                  color: const Color(0xffDEE1E5),
                                  borderRadius: BorderRadius.circular(15).r,
                                ),
                                child: const Icon(Icons.close),
                              ),
                            )
                          ],
                        ),
                        SizedBox(height: 6.h),
                        Row(
                          children: [
                            Container(
                              width: 262.w,
                              child: Text(
                                '$name $surname $patronymic',
                                style: TextStyle(
                                  fontSize: 16.sp,
                                  color: Colors.black,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 51.h),
                  PhoneCallCard(
                    title: 'Телефон основной',
                    phone: mainPhone,
                    onTap: () {
                      _callNumber(mainPhone);
                    },
                  ),
                  PhoneCallCard(
                    phone: jobPhone,
                    title: 'Телефон рабочий',
                    onTap: () {
                      _callNumber(jobPhone);
                    },
                  ),
                  PhoneCallCard(
                    phone: whatsAppPhone,
                    title: 'Телефон WhatsApp',
                    onTap: () {
                      _callNumber(whatsAppPhone);
                    },
                  )
                ],
              ),
            );
          },
        );
      },
      child: const Icon(
        Icons.phone,
        color: Colors.green,
      ),
    );
  }

  _callNumber(phoneNumber) async {
    // const number = '08592119XXXX'; //set the number here
    bool? res = await FlutterPhoneDirectCaller.callNumber(phoneNumber);
  }
}
