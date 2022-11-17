import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Sample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Sample"),
      ),
      body: Column(
        children: [
          Row(
            children: [
              Container(
                height: 100,
                width: 100,
                color: Colors.orange,
              ),
              Container(
                height: 100,
                width: 100,
                color: Colors.green,
                child: Column(
                  children: [Text("Green"), Text("Green Napud")],
                ),
              ),
            ],
          ),
          SizedBox(
            height: 30,
          ),
          Column(
            children: [
              Row(
                children: [
                  Expanded(
                    flex: 30,
                    child: Container(
                      height: 200,
                      color: Colors.red,
                    ),
                  ),
                  Expanded(
                    flex: 20,
                    child: Container(
                      height: 200,
                      color: Colors.white,
                      child: Column(),
                    ),
                  ),
                  Expanded(
                    flex: 50,
                    child: Container(
                      height: 200,
                      color: Colors.red,
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Expanded(
                    child: Container(
                      height: 100,
                      color: Colors.white,
                      child: Column(),
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Expanded(
                    flex: 30,
                    child: Container(
                      height: 200,
                      color: Colors.red,
                    ),
                  ),
                  Expanded(
                    flex: 20,
                    child: Container(
                      height: 200,
                      color: Colors.white,
                      child: Column(),
                    ),
                  ),
                  Expanded(
                    flex: 50,
                    child: Container(
                      height: 200,
                      color: Colors.red,
                    ),
                  ),
                ],
              ),
            ],
          )
        ],
      ),
    );
  }
}
