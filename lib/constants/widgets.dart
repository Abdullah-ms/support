import 'package:flutter/material.dart';
import 'my_url_button.dart';

class MyFutureBuilder extends StatefulWidget {
  final Future future;

  const MyFutureBuilder({super.key, required this.future});

  @override
  MyFutureBuilderState createState() => MyFutureBuilderState();
}

class MyFutureBuilderState extends State<MyFutureBuilder> {
  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future: widget.future,
        builder: (BuildContext ctx, AsyncSnapshot snapshot) {
          if (snapshot.hasData) {
            return ListView.builder(
              shrinkWrap: true,
              itemCount: snapshot.data.length,
              itemBuilder: (BuildContext context, int index) {
                return Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    DialogButton('${snapshot.data[index]['title']}',
                        '${snapshot.data[index]['body']}'),
                  ],
                );
              },
            );
          } else {
            return const Center(
              child: CircularProgressIndicator(color: Colors.transparent),
            );
          }
        });
  }
}


