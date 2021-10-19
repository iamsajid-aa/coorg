import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // to show headline and search bar
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text(
                          'Explore the',
                          style: TextStyle(
                            color: Colors.black87,
                            fontSize: 28,
                          ),
                        ),
                        Text(
                          'Beautiful World!',
                          style: TextStyle(
                            color: Colors.black87,
                            fontWeight: FontWeight.bold,
                            fontSize: 28,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              // search bar
              Padding(
                padding: const EdgeInsets.only(left: 15, right: 15, top: 10),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(8),
                  child: GestureDetector(
                    onTap: () {
                      // // print('search tapped');
                      // Navigator.push(
                      //   context,
                      //   MaterialPageRoute(
                      //       builder: (context) => SingleCityExplorer()),
                      // );
                    },
                    child: Container(
                      height: 50,
                      padding: EdgeInsets.all(8),
                      color: Colors.grey[200],
                      child: Row(
                        children: const [
                          Icon(Icons.search),
                          SizedBox(
                            width: 20,
                          ),
                          Text('Coorg, The Scotland of India'),
                        ],
                      ),
                    ),
                  ),
                ),
              ),

              // explore options

              const Padding(
                padding: EdgeInsets.only(left: 20, top: 20),
                child: Text(
                  'Explore places',
                  style: TextStyle(
                    color: Colors.black87,
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
              ),

              const SizedBox(
                height: 1,
              ),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        width: MediaQuery.of(context).size.width * .30,
                        height: 250,
                        color: Colors.pinkAccent,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        width: MediaQuery.of(context).size.width * .30,
                        height: 250,
                        color: Colors.greenAccent,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        width: MediaQuery.of(context).size.width * .20,
                        height: 250,
                        color: Colors.blueAccent,
                      ),
                    ),
                  ],
                ),
              ),

              // categories

              const Padding(
                padding: EdgeInsets.only(left: 20, top: 20),
                child: Text(
                  'Categories',
                  style: TextStyle(
                    color: Colors.black87,
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
              ),

              const SizedBox(
                height: 1,
              ),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        width: MediaQuery.of(context).size.width * .30,
                        height: 80,
                        color: Colors.yellowAccent,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        width: MediaQuery.of(context).size.width * .30,
                        height: 80,
                        color: Colors.amber,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        width: MediaQuery.of(context).size.width * .20,
                        height: 80,
                        color: Colors.redAccent,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Container(
                  color: Colors.blue,
                  height: 300,
                ),
              )
            ],
          ),
        ));
  }
}
