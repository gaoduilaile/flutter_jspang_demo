import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyWidgetCard1 extends StatelessWidget {
  final List<Person> persons = [];

  @override
  Widget build(BuildContext context) {
    for (int i = 0; i < 10; i++) {
      persons.add(new Person("杭州市余杭区闲林镇" + i.toString(), "高琼" + i.toString(),
          "123456789" + i.toString()));
    }

    return Scaffold(
      appBar: AppBar(
        title: new Text("card and list"),
      ),
      body: ListView.builder(
        itemCount: persons.length,
        itemBuilder: (BuildContext context, int index) {
          return new CardListItem(persons[index]);
        },
      ),
    );
  }
}

class CardListItem extends StatelessWidget {
  final Person person;

  CardListItem(this.person);

  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      child: Column(
        children: <Widget>[
          new Row(
            children: <Widget>[
              Container(
                child: new Icon(
                  Icons.account_box,
                  color: Colors.lightBlue,
                ),
                width: 60,
                height: 60,
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    new Text(
                      person.location,
                      style: new TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                          color: Colors.black),
                    ),
                    Divider(
                      height: 2,
                      color: Colors.white,
                    ),
                    new Text(
                      person.name + ":" + person.tel,
                      style: new TextStyle(fontSize: 16, color: Colors.black54),
                    ),
                  ],
                ),
              ),
            ],
          ),
          Divider(
            color: Colors.black45,
          ),
        ],
      ),
      onPressed: () {
        navigateRouteFunc(context, person);
      },
    );
  }

  navigateRouteFunc(BuildContext context, Person person) async {
    Person  result =await  Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => Card2Detail(person),
      ),
    );

    print(result);
    Scaffold.of(context).showSnackBar(SnackBar(
      content: Text("$result"),
    ));
  }
}

class Person {
  final String location;
  final String name;
  final String tel;

  Person(this.location, this.name, this.tel);

  @override
  String toString() {
    return 'Person{location: $location, name: $name, tel: $tel}';
  }
}

class Card2Detail extends StatelessWidget {
  final Person person;

  Card2Detail(this.person);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: Text(person.name),
      ),
      body: RaisedButton(
        child: Text(person.location + "|" + person.name + "|" + person.tel),
        onPressed: () {

          Navigator.of(context).pop(person);
        },
      ),
    );
  }
}
