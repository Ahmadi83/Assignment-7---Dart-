import 'dart:io';
import 'dart:math';

//عبدالرازق احمدی
void main(){

  List<Student> Students=[];

  while(true){
    print("Student Management Menu");
    print('1.add Student');
    print('2.view Student');
    print('3.delete Student');
    print('3.Exit');
    print("Enter your choice");
    var choice =stdin.readLineSync();
    switch(choice){
      case '1':
        addStudent(Students);
        break;
      case'2':
        viewStudent(Students);
        break;
      case'3':
        deleteStudent(Students);
        break;
      case'4':
        print('Exiting......');
        exit(0);
      default:
        print('invalid choice,please try Again');
    }
  }
}




class Student{
String? name;
var id;
var grade;
Student(this.name,this.id,this.grade);
@override
 String tostring(){
   return'name:$name,ID:$id,Grade$grade';
 }
}




 void addStudent(List<Student>Students){
  print("Enter student name");
  var name =stdin.readLineSync();
  print("Enter stdent id");
  var id =stdin.readLineSync();
  print('Enter Studnet grade');
  var grade =stdin.readLineSync();


  if(name!=null && id!=null&&grade!=null){
    Students.add(Student(name, id, grade));
    print("Student Successfuly Added");
    print("\n");
  }else{
    print('Invalid input,please try again');
  }
  print('\n');
 }

 void viewStudent(List<Student>Students){
  if(Students.isEmpty){
    print("No Students Found");
  }else{
    print('Student List');
    for(var stu in Students){
      print(stu);

    }
    print('\n');
  }
 }


 void deleteStudent(List<Student>Students){
  print('Enter the id of the Student to delete:');
  var id = stdin.readLineSync();

  if(id !=null){
    bool found=false;
    for(var student in Students){
      if(student.id ==id){
        Students.remove(student);
        print("Student deleted Successfuly");
        found = true;
        break;
      }
    }
    if(!found){
      print('studnet not found');
      print('\n');
    }else{
      print("invalid input,try again");
    }
  }


 }

