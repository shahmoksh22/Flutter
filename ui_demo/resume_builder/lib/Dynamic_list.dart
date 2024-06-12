import 'package:flutter/material.dart';

class DynamicForm extends StatefulWidget {
  @override
  _DynamicFormState createState() => _DynamicFormState();
}

class _DynamicFormState extends State<DynamicForm> {

// list to store dynamic text field widgets
  List<DynamicWidget> listDynamic = [];

// list to store data
// entered in text fields
  List<String> data = [];

// icon for floating action button
  Icon floatingIcon =  const Icon(Icons.add);

// function to add dynamic
// text field widget to list
  addDynamic() {
    // if data is already present, clear
    // it before adding more text fields
    if (data.length != 0) {
      floatingIcon = new Icon(Icons.add);
      data = [];
      listDynamic = [];
    }

    // limit number of text fields to 5
    if (listDynamic.length >= 5) {
      return;
    }

    // add new dynamic text field widget to list
    listDynamic.add(new DynamicWidget());
    setState(() {});
  }

// function to retrieve data from
// text fields and display in a list
  submitData() {
    // change icon to back arrow and clear existing data
    floatingIcon = new Icon(Icons.arrow_back);
    data = [];

    // retrieve data from each text field widget and add to data list
    listDynamic.forEach((widget) => data.add(widget.controller.text));

    setState(() {});
    print(data.length);
    data.forEach((element) {
      print(element);
    });
  }

  @override
  Widget build(BuildContext context) {
    // widget to display list of entered data
    Widget result = new Flexible(
        flex: 1,
        child: new Card(
          child: ListView.builder(
            itemCount: data.length,
            itemBuilder: (_, index) {
              return new Padding(
                padding: new EdgeInsets.all(10.0),
                child: new Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    new Container(
                      margin: new EdgeInsets.only(left: 10.0),
                      child: new Text("${index + 1} : ${data[index]}"),
                    ),
                    new Divider()
                  ],
                ),
              );
            },
          ),
        ));

    // widget to display dynamic text field widgets
    Widget dynamicTextField = new Flexible(
      flex: 2,
      child: new ListView.builder(
        itemCount: listDynamic.length,
        itemBuilder: (_, index) => listDynamic[index],
      ),
    );

    // widget for submitting data
    Widget submitButton = new Container(
      child: new TextButton(
        onPressed: submitData,
        child: new Padding(
          padding: new EdgeInsets.all(16.0),
          child: new Text('Submit Data'),
        ),
      ),
    );

    return new Scaffold(
        appBar: new AppBar(
          title: new Text('Dynamic App'),
        ),
        body: new Container(
          margin: new EdgeInsets.all(10.0),
          child: new Column(
            children: <Widget>[
              // if data is present, display result widget, else display dynamic text field widget
              data.length == 0 ? dynamicTextField : result,
              // if data is present, display submit button
              data.length == 0 ? submitButton : new Container(),
            ],
          ),
        ),
        // floating action button to add dynamic text field widgets
        floatingActionButton: new FloatingActionButton(
          onPressed: addDynamic,
          child: floatingIcon,
        ),
    );
  }
}

// widget for dynamic text field
class DynamicWidget extends StatelessWidget {
  TextEditingController controller = new TextEditingController();

  @override
  Widget build(BuildContext context){
    return Container(
      margin: new EdgeInsets.all(8.0),
      child: new TextField(
        controller: controller,
        decoration: new InputDecoration(hintText: 'Enter Data '),
      ),
    );
  }
}
