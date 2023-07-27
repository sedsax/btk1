import 'package:flutter/material.dart';

class LoginDesign1 extends StatelessWidget {
  const LoginDesign1({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        //crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const CircleAvatar(
            radius: 50,
            backgroundColor: Colors.white,
            child: Image(
              image: AssetImage('images/resim.png'),
              height: 60,
            ),
          ),
          const Padding(
            padding: EdgeInsets.all(5.0),
            child: Text(
              "Sedanur Savaş",
              style: TextStyle(
                fontSize: 24,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(left: 10, right: 10, bottom: 10),
            child: Text(
              "SOFTWARE DEVELOPER",
              style: TextStyle(
                  fontSize: 25,
                  color: Color.fromARGB(255, 110, 44, 44),
                  fontWeight: FontWeight.w500,
                  letterSpacing: 2),
            ),
          ),
          const SizedBox(
            width: 200,
            child: Divider(
              color: Colors.white,
              thickness: 1,
            ),
          ),
          Card(
            margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 40),
            // margin: const EdgeInsets.only(left: 50, right: 50),
            // padding: const EdgeInsets.all(12),
            //  decoration: BoxDecoration(borderRadius: BorderRadius.circular(5), color: Colors.white),
            //color: Colors.white,
            // width: 300,
            //  height: 30,
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Padding(
                    padding: EdgeInsets.only(right: 10),
                    child: Icon(
                      Icons.phone,
                      color: Colors.pink,
                      size: 30,
                    ),
                  ),
                  Text(
                    "+90 555 444 33 22",
                    style: TextStyle(
                        color: Color.fromARGB(255, 255, 115, 162),
                        fontSize: 20),
                  ),
                ],
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 40),
            // margin: const EdgeInsets.only(left: 50, right: 50, top: 15),
            padding: const EdgeInsets.all(12),
            //color: Colors.white,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5), color: Colors.white),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Padding(
                  padding: EdgeInsets.only(right: 10),
                  child: Icon(
                    Icons.email,
                    color: Colors.pink,
                    size: 30,
                  ),
                ),
                Text(
                  "aaa.bbb@gmail.com",
                  style: TextStyle(
                      color: Color.fromARGB(255, 255, 115, 162), fontSize: 20),
                ),
              ],
            ),
          ),
          const Card(
            margin: EdgeInsets.symmetric(vertical: 10, horizontal: 40),
            child: ListTile(
              leading: Icon(Icons.add),
              title: Text(
                "ListTile",
                style: TextStyle(
                    color: Color.fromARGB(255, 255, 115, 162), fontSize: 20),
              ),
              trailing: Icon(Icons.delete),
            ),
          ),
          //TextField(),
          /*
          Container(
            color: Colors.red,
            height: 50,
            width: 300,
          ), */
        ],
      ),
    );
  }
}

class Containers1 extends StatelessWidget {
  const Containers1({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      // verticalDirection: VerticalDirection.up,
      //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      //crossAxisAlignment: CrossAxisAlignment.stretch, // widgetları cihazın boyutu kadar yayıyor.
      children: [
        Container(
          height: 130,
          width: 230,
          color: Colors.pink,
          // alignment: Alignment.bottomLeft,
          margin: const EdgeInsets.all(20),
          padding: const EdgeInsets.all(10),
          child: const Text("Selaaaam"),
        ),
        Container(
          height: 130,
          // width: double.infinity,
          width: 130,
          color: const Color.fromARGB(255, 162, 18, 66),
          // alignment: Alignment.bottomLeft,
          margin: const EdgeInsets.only(left: 20, right: 20, top: 20),
          padding: const EdgeInsets.all(10),
          child: const Text("Selaaaam"),
        ),
        const SizedBox(
          height: 40,
        ),
        Container(
          height: 130,
          width: 130,
          color: const Color.fromARGB(255, 100, 28, 52),
          // alignment: Alignment.bottomLeft,
          margin: const EdgeInsets.only(left: 20, right: 20, bottom: 20),
          padding: const EdgeInsets.all(10),
          child: const Text("Selaaaam"),
        ),
      ],
    );
  }
}

class CircleAvatar1 extends StatelessWidget {
  const CircleAvatar1({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            CircleAvatar(
              backgroundColor: Colors.white,
              radius: 50,
              child: Image(
                image: AssetImage('images/resim.png'),
                height: 50,
              ),
            ),
            Text(
              "Sedanur Savaş",
              style: TextStyle(color: Colors.white, fontSize: 24),
            )
          ],
        ),
      ),
    );
  }
}