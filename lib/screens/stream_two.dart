

import 'dart:async';

import 'package:flutter/material.dart';

void main() => runApp(const StreamTwo());


class StreamTwo extends StatelessWidget {
  const StreamTwo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      home: HomeTwo(),
    );
  }
}

class HomeTwo extends StatelessWidget {
   HomeTwo({Key? key}) : super(key: key);
  final count = Counter();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton.extended(
        onPressed: null,
        label: Row(
          children: [
            IconButton(onPressed: count.increment, icon: const Icon(Icons.add)),
            IconButton(onPressed: count.decrement, icon: const Icon(Icons.remove)),
          ],
        ),
      ),
      body: Center(
        child: StreamBuilder<String>(
          initialData: "None",
          stream: count.stream,
          builder: (context,snapshot){
            return Text("Counter: ${snapshot.data}",style: const TextStyle(fontSize: 26),);
          },
        ),
      ),
    );
  }
}


class Counter{
  int count = 0;
  final StreamController<int> _controller = StreamController();

  final _tranform = StreamTransformer<int,String>.fromHandlers(
    handleData: (data,sink){
      sink.add(" $data");
    },
      handleError: (error, stackTrace, sink) {
        sink.add("Error ekanda");
      }
  );
  Stream<String> get stream => _tranform.bind(_controller.stream);

  void increment(){
    if(count == 2){
      count++;
      _controller.sink.addError("ERROR");
    }else{
      _controller.sink.add(++count);
    }
  }
  void decrement(){
    if(count != 0){
      _controller.sink.add(--count);
    }
  }
}