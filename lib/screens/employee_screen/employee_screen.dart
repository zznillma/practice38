import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:practice38_2/models/employee_model.dart';
import 'package:practice38_2/screens/employee_info_screen/employee_info_screen.dart';
import 'package:practice38_2/screens/employee_screen/widgets/list_view_card.dart';
import 'package:practice38_2/screens/employee_screen/widgets/text_feild_card.dart';
import 'package:practice38_2/screens/phone_bottom_sheet_screen/phone_bottom_sheet_screen.dart';

class EmployeeScreen extends StatelessWidget {
  const EmployeeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white12,
        elevation: 0,
        centerTitle: false,
        title: Text(
          'Сотрудники',
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
            fontSize: 20.sp,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const TextFieldCard(),
            SizedBox(height: 12.h),
            Text(
              'У кого сегодня день рождения',
              style: TextStyle(
                fontSize: 16.sp,
                fontWeight: FontWeight.bold,
                color: Colors.blue,
              ),
            ),
            SizedBox(height: 14.h),
            ListViewCard(),
            SizedBox(height: 23.h),
            Text(
              'У кого завтра день рождения',
              style: TextStyle(
                fontSize: 16.sp,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            SizedBox(height: 14.h),
            ListViewCard(),
            SizedBox(height: 26.h),
            Text(
              'Все сотрудники',
              style: TextStyle(
                fontSize: 16.sp,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            SizedBox(height: 16.h),
            Expanded(
              child: ListView.separated(
                itemCount: employeeModel.length,
                itemBuilder: (context, index) {
                  return InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => EmployeeInfoScreen(
                            name: employeeModel[index].name,
                            surname: employeeModel[index].surname,
                            patronymic: employeeModel[index].patronymic,
                            jobPhone: employeeModel[index].jobPhone,
                            jobTitle: employeeModel[index].jobTitle,
                            departament: employeeModel[index].departament,
                            direction: employeeModel[index].direction,
                            whatsAppPhone: employeeModel[index].whatsAppPhone,
                            mainPhone: employeeModel[index].mainPhone,
                            image: employeeModel[index].image,
                            email: employeeModel[index].email,
                            bDay: employeeModel[index].bDay,
                          ),
                        ),
                      );
                    },
                    child: Container(
                      height: 64.h,
                      width: 328.w,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.r),
                        color: Colors.white,
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(
                          top: 11,
                          bottom: 11,
                          left: 16,
                          right: 10,
                        ).r,
                        child: Row(
                          children: [
                            Image.asset(employeeModel[index].image),
                            SizedBox(width: 16.w),
                            Expanded(
                              child: Text(
                                '${employeeModel[index].name} ${employeeModel[index].surname} ${employeeModel[index].patronymic}',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 16.sp,
                                ),
                              ),
                            ),
                            PhoneBottomSheet(
                              name: employeeModel[index].name,
                              surname: employeeModel[index].surname,
                              patronymic: employeeModel[index].patronymic,
                              mainPhone: employeeModel[index].mainPhone,
                              jobPhone: employeeModel[index].jobPhone,
                              whatsAppPhone: employeeModel[index].whatsAppPhone,
                            )
                          ],
                        ),
                      ),
                    ),
                  );
                },
                separatorBuilder: (context, index) {
                  return SizedBox(height: 16.h);
                },
              ),
            )
          ],
        ),
      ),
    );
  }

  
}
