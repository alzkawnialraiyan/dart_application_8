import 'dart:io';

void main(){
  List <Map> students = [];

  while (true) {
    print("\nWelcome to the system.");
    print("1.Add Student");
    print("2.Show All Students");
    print("3.Exit");
    print("Enter your choice: ");
    int choice = int.parse(stdin.readLineSync()!);

    switch (choice) {
      case 1:
        Map details = {};
        print("Enter student name:");
        details["name"] = stdin.readLineSync()!;
        print("Enter student email:");
        details["email"] = stdin.readLineSync()!;
        print("Enter student phone number:");
        details["phone"] = stdin.readLineSync()!;
        students.add(details);
        print("Student added succssfully.\n");
        break;
      case 2:
        if (students.isEmpty){
          print("No students added");
        } else {
          print("Students added");
          for (var element in students) {
            print("\nStudent ${students.indexOf(element) + 1}");
            print("Name : ${element["name"]}");
            print("Email : ${element["email"]}");
            print("Phone number : ${element["phone"]}");
          }  
        }
      default:
    }
  }
}