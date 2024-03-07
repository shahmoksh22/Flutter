class Student{
  String studentName = '';
  void updateName(String name){
    studentName = name;
  }
  void printNameofStudent(){
    print(studentName);
  }
}
void main(){
  //In
  Student()
  ..updateName("Hello")
    ..printNameofStudent();

}