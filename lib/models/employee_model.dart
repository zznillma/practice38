// ignore_for_file: public_member_api_docs, sort_constructors_first
class EmployeeModel {
  String name;
  String surname;
  String? patronymic;
  String jobTitle;
  String direction;
  String departament;
  String email;
  String bDay;
  String mainPhone;
  String jobPhone;
  String whatsAppPhone;
  String image;

  EmployeeModel({
    required this.name,
    required this.surname,
    this.patronymic = '',
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
}

List<EmployeeModel> employeeModel = [
  EmployeeModel(
      name: 'Мырзабек',
      surname: 'Жыпаркулов',
      patronymic: 'Жыпаркулович',
      jobTitle: 'Генеральный директор',
      direction: 'Дирекция управления',
      departament: 'Отдел управления',
      email: 'mjagarkulov@gosecotech.kg',
      bDay: '16.09.1972',
      mainPhone: '+996705990910',
      jobPhone: '+996709066963',
      whatsAppPhone: '+996705990910',
      image: 'assets/images/image1.png')
];
