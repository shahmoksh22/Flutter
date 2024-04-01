import 'ExtendedList.dart';
void main() {
  List<String> listDemo = [];
  print("List Init = $listDemo");
  print("List Length = ${listDemo.length}");
  listDemo.add("Value 1");
  listDemo.add("Value 2");
  print("List Print After Add = $listDemo");
  print("List Length = ${listDemo.length}");
  listDemo.insert(1, "element");
  print("List Print After Insert = $listDemo");
  print("List Length = ${listDemo.length}");


  print("List First Element = ${listDemo.first}");
  print("List First Element = ${listDemo.last}");
  print("List Element By Indexed = ${listDemo.elementAt(1)}");


  listDemo[1]= "Hello";
  print("List Print After Update = $listDemo");
  print("List Length = ${listDemo.length}");


  listDemo.removeAt(1);
  print("List Print After Delete = $listDemo");
  print("List Length = ${listDemo.length}");


  listDemo.update(1, "Hello");
  print("List Print After Update = $listDemo");
  print("List Length = ${listDemo.length}");

  
}