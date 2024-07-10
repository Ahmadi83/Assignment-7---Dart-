
import 'dart:io';

//عبدالرازق احمدی  

List notestitle = List.empty(growable: true);
List notesdes = List.empty(growable: true);

void main(){
  String option ='';
  do{
    print("choice an option");
    print('''
    For add  :a
    For Del  :d
    For show :s
    For Exit :e
    ''');
    option = stdin.readLineSync()!;
    switch(option) {
      case 'a':
        addtolist();

      case 'd':
        print("Select index of your Note");
        int a =int.parse(stdin.readLineSync()!);
        dellList(a);

      case 's':
        showList();
    }
  }while(option !='e');{
  }
}

 void addtolist(){
   print('Enter your Title');
 var t = stdin.readLineSync()!;
   print('Enter your description');
 var d =stdin.readLineSync()!;
     notestitle.add(t);
    notesdes.add(d);
 }

 void dellList( int t) {
     if( notesdes.isNotEmpty && notestitle.isNotEmpty){
    notestitle.removeAt(t);}
     else{
       print("There is'nt any note in to List");
     }
   notesdes.removeAt(t);
 }
  void showList() {
    for(int i=0;i<notestitle.length;i++){
      stdout.write('          Title is  :');
      print(notestitle [i]);
      stdout.write('desc is About: {');
      print(notesdes[i]);
      print('');
    }


 }



