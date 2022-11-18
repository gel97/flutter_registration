import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../provider/bloc_provider.dart';

class HomeView extends StatefulWidget {
  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  int num = 0;
  @override
  Widget build(BuildContext context) {
    print('State Rebuild');
    final testBloc = BlocProvider.of(context)!.testBloc;

    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            StreamBuilder<String>(
                stream: testBloc.streamKahoys,
                builder: (context, snapshot) {
                  if (snapshot.hasData) {
                    return Text('${snapshot.data}',
                        style: TextStyle(fontWeight: FontWeight.bold));
                  } else {
                    return Text('Walay Data');
                  }
                }),
            StreamBuilder<String>(
                stream: testBloc.streamLubis,
                builder: (context, snapshot) {
                  if (snapshot.hasData) {
                    return Text('${snapshot.data}',
                        style: TextStyle(fontWeight: FontWeight.bold));
                  } else {
                    return Text('Walay Data');
                  }
                }),
            Row(
              children: [
                IconButton(
                    tooltip: 'Kahoy',
                    onPressed: () {
                      testBloc.setKahoy();
                    },
                    icon: Icon(Icons.add)),
                IconButton(
                    tooltip: 'Lubi',
                    onPressed: () {
                      testBloc.setLubi();
                    },
                    icon: Icon(Icons.save))
              ],
            )
          ],
        ),
      ),
    );
    //   return Scaffold(
    //     appBar: AppBar(
    //       title: Text('Home Page for today`s vedyowww'),
    //     ),
    //     body: Center(
    //       child: Column(
    //         mainAxisAlignment: MainAxisAlignment.center,
    //         children: [
    //           Container(
    //             child: Text(
    //               'You have pushed the button',
    //               style: Theme.of(context).textTheme.headline6,
    //             ),
    //           ),
    //           Text(
    //             num.toString(),
    //             style: Theme.of(context).textTheme.headline4,
    //           )
    //         ],
    //       ),
    //     ),
    //     floatingActionButton: FloatingActionButton(
    //       onPressed: () {
    //         setState(() {
    //           num++;
    //         });
    //       },
    //     ),
    //   );
    // }
  }
}
