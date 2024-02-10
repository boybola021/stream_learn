import 'dart:io';
import 'dart:async';
import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

//
// void main(){
//   Iterable <int> number = naturalGenerate(20);
//   for(int number in number){
//     print(number);
//   }
// }
//
// Iterable<int> naturalGenerate(int number) sync*{
//   int k = 0;
//   while(k < number){
//     sleep(const Duration(milliseconds: 500));
//     yield ++k;
//   }
// }
//
//
// Iterable<int>naturalDownFrom(int n)sync*{
//   if(n > 0){
//     yield n;
//     yield* naturalDownFrom(n - 1);
//   }
// }
// void main(){
//   print(naturalDownFrom(10));
// }

/// task a
// Iterable<int>naturalDownFrom(int n)sync*{
//   for(int i = 1; i < n;i++){
//     if(i % 7 == 0){
//       yield i;
//     }
//   }
// }
// void main(){
//   print(naturalDownFrom(100));
// }
//
// Stream<int>naturalGenerate(int n)async*{
//   int k = 0;
//   while(n > k){
//     await Future.delayed(const Duration(seconds: 1));
//       yield ++k;
//   }
// }
// void main()async{
//   Stream<int> sequenceNatural = naturalGenerate(20);
//   await for(int i in sequenceNatural ){
//     print(i);
//   }
//
// }

//
// Stream<String> consciousness()async*{
//   final data = ["con","scious","ness"];
//   for(final part in data){
//     await Future<void>.delayed(
//       const Duration(milliseconds: 500),
//     );
//     yield part;
//   }
// }
// void main()async{
//   final stream = consciousness();
//   stream.listen((event) {
//     print(event);
//   });
//
// }

// Stream<int> consciousness(int k)async*{
//   final data = List.generate(100, (index) => index);
//   for(final sub in data){
//     await Future<void>.delayed(
//       const Duration(milliseconds: 500),
//     );
//     if(sub % k == 0){
//       yield sub;
//     }
//   }
// }
// void main()async{
//   final stream = consciousness(5);
//   stream.listen((event) {
//     print(event);
//   });
//}

// Stream<int> naturalGenerate(int n)async*{
//   int k = 0;
//   while( k < n){
//     k++;
//     await Future<void>.delayed(
//       const Duration(seconds: 1),
//     );
//     if(k == 4){
//       yield* Stream<int>.error("error: $k");
//     }else{
//       yield k;
//     }
//   }
// }
// void main()async {
//   Stream<int> sequenceNatural = naturalGenerate(20);
//
//   sequenceNatural.listen((event) {
//     print(event);
//   },
//   onError: (e,s){
//     print(e);
//   },
//     cancelOnError: false,
//     onDone: (){
//     print("Compalted");
//     }
//   );
// }
//
// Stream<int> naturalGenerate(int n) async* {
//   int k = 0;
//   while (k < n) {
//     k++;
//     await Future<void>.delayed(
//       const Duration(seconds: 1),
//     );
//     if (k == 4) {
//       yield* Stream<int>.error("error: $k");
//     } else {
//       yield k;
//     }
//   }
// }
// void main()async {
//   try{
//     Stream<int> sequenceNatural = naturalGenerate(8);
//    await for(int number in sequenceNatural){
//      print(number);
//   }
//   }on Exception catch(e){
//    print(e);
//   } finally{
//    print("Compalte");
//   }
//
// // }
//
//     Future<void> main() async {
//       Stream<int>.periodic(const Duration(seconds: 1),
//             (value) => value,).take(10).listen((event) => print(event));
//     }
//   }

//
//
//
// Stream<int> naturalGenerate(int n)async*{
//   int k = 0;
//   while( k < n){
//     k++;
//     await Future<void>.delayed(
//       const Duration(seconds: 1),
//     );
//     if(k == 4){
//       yield* Stream<int>.error("error: $k");
//     }else{
//       yield k;
//     }
//   }
// }
// void main()async {
//   Stream<int> sequenceNatural = naturalGenerate(8);
//   print("this is print: ${await sequenceNatural.first}");
//
//   sequenceNatural.listen((event) {
//     print(event);
//   },
//   onError: (e,s){
//     print(e);
//   },
//     cancelOnError: false,
//     onDone: (){
//     print("Compalted");
//     }
//   );
// }

//
// Stream<int> naturalGenerate(int n)async*{
//   int k = 0;
//   while( k < n){
//     k++;
//     await Future<void>.delayed(
//       const Duration(seconds: 1),
//     );
//     if(k == 4){
//       yield* Stream<int>.error("error: $k");
//     }else{
//       yield k;
//     }
//   }
// }
//
// void main()async {
//
//   Stream<int> sequenceNatural = naturalGenerate(8);
//   Stream<int> broadcast = sequenceNatural.asBroadcastStream();
//   print("this is print: ${await sequenceNatural.first}");
//
//   broadcast.listen((event) {
//     print(event);
//   },
//       onError: (e,s){
//         print(e);
//       },
//       cancelOnError: false,
//       onDone: (){
//         print("Compalted");
//       }
//   );
// }

//
// Stream<int> naturalGenerate(int n)async*{
//   int k = 0;
//   while( k < n){
//     k++;
//     print(k);
//     await Future<void>.delayed(
//       const Duration(seconds: 1),
//     );
//     if(k == 4){
//       yield* Stream<int>.error("error: $k");
//     }else{
//       yield k;
//     }
//   }
// }
//
// void main(){
//   // final stream = naturalGenerate(8);
// StreamSubscription<int>? subscription;
// subscription = stream.listen((data) {
//   print(data);
//   subscription?.cancel();
// },
//     onError: (e,s){
//       print(e);
//     },
//     cancelOnError: false,
//     onDone: (){
//       print("Compalted");
//     }
// );
//}

//
// class LeanSream extends StatelessWidget {
//   const LeanSream({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return const MaterialApp(
//       home: Home(),
//     );
//   }
// }
//
// class Home extends StatefulWidget {
//   const Home({Key? key}) : super(key: key);
//
//   @override
//   State<Home> createState() => _HomeState();
// }
//
// class _HomeState extends State<Home> {
//   int number = 0;
//   StreamSubscription<int>? subscriber;
//   // @override
//   // void initState() {
//   //   super.initState();
//     // final stream = naturalGenerate(10);
//     // stream.listen((data) => setState(() => number = data),
//     //     onError: (error) => print(error),
//     //     onDone: () {
//     //       ScaffoldMessenger.of(context).showSnackBar(
//     //         const SnackBar(
//     //           content: Text("Tamam"),
//     //         ),
//     //       );
//     //     });
//
//   //}
//   // @override
//   // void initState() {
//   //   super.initState();
//   //   final stream = naturalGenerate(10);
//   //   subscriber = stream.listen(null);
//   //
//   //   subscriber?.onData((data) {
//   //     setState(() {
//   //       number = data;
//   //     });
//   //   });
//   //
//   //   subscriber?.onError((error) {
//   //     ScaffoldMessenger.of(context).showSnackBar(
//   //       SnackBar(
//   //         backgroundColor: Colors.red,
//   //         content: Text("Error: $error"),
//   //       ),
//   //     );
//   //   });
//   // }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Center(
//         child: Text(
//           "Data: $number",
//           style: Theme.of(context).textTheme.headlineLarge,
//         ),
//       ),
//     );
//   }
// }
//
// void main(){
//   Future<void>main()async{
//     final controller = StreamController<String>(
//
//     );
//     final stream = controller.stream;
//     final sink = controller.sink;
//
//     stream.listen((value) => print(value),
//     onError: (Object error) => print(error);
//     onDone: () => print("Sink closed");
//     );
//     sink.
//   }
//
// }

//
// void main() {
//   final streamController = StreamController(
//     onPause: () => print("Paused"),
//     onResume: () => print("Resumed"),
//     onCancel: () => print("Cancelled"),
//     onListen: () => print("Listens"),
//   );
//
//   final stream = streamController.stream;
//   final sink = streamController.sink;
//   late StreamSubscription subscriber;
//
//   subscriber = stream.listen(
//         (event) {
//       print("Event: $event");
//     },
//     onDone: () => print("Done"),
//     onError: (error) => print(error),
//   );
//
//   sink.add("g");
//   sink.add("g");
//   sink.addError(Exception("s"));
//   sink.add("g");
// }

/// takrorlash

/// #1
//
// Iterable<int> naturalGenerator(int n)sync*{
//   int k = 0;
//
//   while(k < n){
//     yield ++k;
//   }
// }
//
// void main(){
//   Iterable<int>sequenceNatural = naturalGenerator(20);
//   for(int number in sequenceNatural){
//     print(number);
//   }
// }

/// #2

// Iterable<int> naturalGenerator(int n)sync*{
//   while(n > 0){
//     yield n;
//     yield* naturalGenerator(n - 1);
//   }
// }
//
// void main(){
//   print(naturalGenerator(20));
// }

/// #3

// void main() async{
//   Stream<int>sequenceNatural = naturalGenerator(20);
//   await for(int number in sequenceNatural){
//     print(number);
//   }
// }
//
// Stream<int>naturalGenerator(int n)async*{
//   int k = 0;
//   while( k < n){
//     await Future.delayed(const Duration(seconds: 1));
//     yield ++k;
//   }
// }

/// #4
//
// Stream<String>consicuesness()async*{
//   final data = ["con","sciunus","ness"];
//   for(final part in data){
//     await Future<void>.delayed(
//       const Duration(milliseconds: 500),
//     );
//     yield part;
//   }
// }
// void main(){
//   final stream = consicuesness();
//   stream.listen((data) {
//     print(data);
//   });
// }

/// Exercise
//
//
// Stream<int> naturalGenerator({required int n,required int k})async*{
//   int i = 0;
//   while(n > i){
//     if(k % i == 0){
//       yield i;
//     }
//   }
// }
//
// void main(){
//   Stream<int> sequenceNatural = naturalGenerator(n: 26,k: 7);
//   print(sequenceNatural);
// }

/// #5

// Stream<int> naturalGenerator(int n)async*{
//   int i = 0;
//   while(n > i){
//     i++;
//     await Future<void>.delayed(
//       const Duration(seconds: 1),
//     );
//     if(i == 4){
//       yield* Stream.error("error: $i");
//     }else{
//       yield i;
//     }
//   }
// }
//
// void main(){
//   Stream<int> sequenceNatural = naturalGenerator(8);
//
//   sequenceNatural.listen((event) {
//     print(event);
//   },
//   onError: (e,s){
//     print(e);
//   },
//     cancelOnError: false,
//     onDone: (){
//     print("Complated");
//     }
//   );
// }

/// #6

//
// Stream<int> naturalGenerator(int n)async*{
//   int i = 0;
//   while(n > i){
//     i++;
//     await Future<void>.delayed(
//       const Duration(seconds: 1),
//     );
//     if(i == 4){
//       yield* Stream.error("error: $i");
//     }else{
//       yield i;
//     }
//   }
// }
//
// void main()async{
//   try{
//     Stream<int> sequenceNatural = naturalGenerator(8);
//     await for(int number in sequenceNatural){
//       print(number);
//     }
//   }on Exception catch(error){
//     print(error);
//   }finally{
//     print("All finished");
//   }
// }

/// Exercise

/// xatosi bor
// Stream<int> streamGenerator(int n)async*{
//   int i = 0;
//   while(i < n){
//     i++;
//     await Future<void>.delayed(
//       const Duration(seconds: 1),
//     );
//     if(i % 3 == 0){
//       yield* Stream.error("error: $i");
//     }else{
//       yield i;
//     }
//   }
// }
//
// void main()async{
//
//     Stream<int> sequenceNatural = streamGenerator(10);
//     print(sequenceNatural);
//     sequenceNatural.listen((item) {
//       print(item);
//     },
//     onError: (e,s){
//       print(e);
//     }
//     );
// }
//
//

/// #7
//
// Future<void> main()async{
//   Stream<int>.periodic(
//     Duration(seconds: 1),
//       (value) => value,
//   ).take(10).listen((event) => print(event),);
// }

/// #8

//
// Future<void> main()async{
//   final first = Future(() => "Row");
//   final second = Future(() => "row");
//   final third = Future(() => "row");
//   final fourch = Future.delayed(
//     const Duration(milliseconds: 300),
//       () => "your boat",
//   );
//
//   final stream = Stream<String>.fromFutures([
//     first ,
//     second,
//     third ,
//     fourch,
//   ]);
//
//   stream.listen((data){
//     print(data);
//   }) ;
// }

/// #9
//
// Stream<int>naturalGenerator(int n)async*{
//   int k = 0;
//
//   while(k < n){
//     k++;
//     await Future.delayed(Duration(seconds: 1));
//     if(k == 4){
//       yield* Stream<int>.error("error: $k");
//     }else{
//       yield k;
//     }
//   }
// }
//
// void main()async{
//   Stream<int>senquenceNatural = naturalGenerator(8);
//   print("This is print: ${await senquenceNatural.first}");
//
//   senquenceNatural.listen((event) {
//     print(event);
//   },
//   onError: (e,s){
//     print(e);
//   },
//     cancelOnError: false,
//     onDone: (){
//     print("Compalte");
//     }
//   );
// }

/// #10

// Stream<int>naturalGenerator(int n)async*{
//   int k = 0;
//
//   while(k < n){
//     k++;
//     await Future.delayed(Duration(seconds: 1));
//     if(k == 4){
//       yield* Stream<int>.error("error: $k");
//     }else{
//       yield k;
//     }
//   }
// }
//
// void main()async{
//   Stream<int>senquenceNatural = naturalGenerator(8);
//
//   Stream<int>broadcast = senquenceNatural.asBroadcastStream();
//   print("This is print: ${await broadcast.first}");
//
//   broadcast.listen((event) {
//     print(event);
//   },
//   onError: (e,s){
//     print(e);
//   },
//     cancelOnError: false,
//     onDone: (){
//     print("Compalte");
//     }
//   );
// }

/// #11

// Stream<int>genearteFive()async*{
//   for(int i = 0; i < 100; i += 5){
//     Future.delayed(Duration(milliseconds: 250));
//     yield i;
//   }
// }
//
// Future<void>main()async{
//   final broadcast = genearteFive().asBroadcastStream();
//
//   await for(int number in broadcast){
//     print("Sub 1: $number");
//     if(number == 50){
//       break;
//     }
//   }
//   broadcast.listen((number) {
//     print("Sub 2: $number");
//   });
// }

/// #12

// Stream<int>naturalGenerator(int n)async*{
//   int k = 0;
//
//   while(k < n){
//     k++;
//     await Future.delayed(Duration(seconds: 1));
//     if(k == 4){
//       yield* Stream<int>.error("error: $k");
//     }else{
//       yield k;
//     }
//   }
// }
//
// void main(){
//  final stream = naturalGenerator(8);
//  StreamSubscription<int>? subscription;
//  subscription = stream.listen((data) {
//    print(data);
//    subscription?.cancel();
//  },
//    onError: (e,s){
//    print(e);
//    },
//    cancelOnError: false,
//    onDone: (){
//    print("Complate");
//    }
//  );
// }

/// #13
/*
Stream<int>naturalGenerator(int n)async*{
  int k = 0;

  while(k < n){
    k++;
    await Future.delayed(Duration(seconds: 1));
    if(k == 4){
      yield* Stream<int>.error("error: $k");
    }else{
      yield k;
    }
  }
}

void main()async{
  final stream = naturalGenerator(8);
  StreamSubscription<int>? subscription;
  subscription = stream.listen((data) => print(data));
  subscription.onError((e) => print(e));
  subscription.onDone(() => print("Bzning mahsulotdan foydalanganiz uchun raxmat"));
  await Future.delayed(const Duration(seconds: 4)).then((value) => subscription?.pause());
  await Future.delayed(const Duration(seconds: 5)).then((value) => subscription?.resume());
}
 */

/// Exercise
//
// Stream<int>naturalGenerator(int n)async*{
//   int k = 0;
//
//   while(k < n){
//     k++;
//     await Future.delayed(const Duration(milliseconds: 500));
//       yield Random().nextInt(100) + 1;
//   }
// }
//
// void main(){
//   final fiveSub = naturalGenerator(20);
//   StreamSubscription<int>?random;
//   random = fiveSub.listen((item) async{
//    if(item % 5 == 0){
//      random?.pause(Future.delayed(const Duration(seconds: 5)));
//     print("5 ga Karrali: $item");
//    }
//    print(item);
//   }
//   );
// }

/// 14
//
// Stream<int> randomGenerate(int n) async*{
//   for(int i = 0; i < n;i++){
//     await Future.delayed(const Duration(milliseconds: 500));
//     yield Random().nextInt(100) + 1;
//   }
// }
//
//
// void main(){
//   final fiveSub = randomGenerate(20);
//   StreamSubscription<int>? random;
//   random = fiveSub.listen((onData) {
//     print(onData);
//     if(onData % 5 == 0){
//       random?.pause(Future.delayed(const Duration(seconds: 5)));
//     }
//   },);
//   random.onError((e,s) => print("Dastur xato ishlayapti"));
//   random.onDone(() => print("Dastur  ishni yakunladi"));
// }

/// #15
//
// Stream<int> randomGenerate(int n) async*{
//   for(int i = 0; i < n;i++){
//     await Future.delayed(const Duration(milliseconds: 500));
//     yield Random().nextInt(100) + 1;
//   }
// }
//
//
// void main(){
//   final fiveSub = randomGenerate(20);
//   StreamSubscription<int>? random;
//   random = fiveSub.listen((onData)async{
//     print(onData);
//     if(onData % 5 == 0){
//       print("Exit");
//       random?.cancel();
//     }
//   },);
//   random.onError((e,s) => print("Dastur xato ishlayapti"));
//   random.onDone(() => print("Dastur  ishni yakunladi"));
// }

/// #16

//
// Stream<int> randomGenerate(int n) async*{
//   for(int i = 0; i < n;i++){
//     await Future.delayed(const Duration(milliseconds: 500));
//     yield Random().nextInt(100) + 1;
//   }
// }
//
//
// void main(){
//   final stream = randomGenerate(20).asBroadcastStream();
//   StreamSubscription<int>? subscription1;
//
//   StreamSubscription<int> subscription2 = stream.listen((event) {
//     print("This data listenning with subsriber 2: $event");
//   });
//   subscription1 = stream.listen((event) async{
//     print(event);
//     if(event % 5 == 0){
//       print("pause");
//       subscription1?.pause(Future.delayed(const Duration(seconds: 3)));
//     }
//   },);
//   subscription1.onError((e,s) => print("Dasturda xatolik"));
//   subscription1.onDone(() => print("Dastur ishni yakunladi"));
// }

/// 17

// Future<void> main()async{
//   final constroler = StreamController<String>();
//   final stream = constroler.stream;
//   final sink = constroler.sink;
//   stream.listen((event) => print(event),
//   onError: (Object? error) => print(error),
//   onDone: () => print("Sink closed"),
//   );
//   sink.add("grape");
//   sink.add("grape");
//   sink.addError(Exception("cherry"));
//   sink.add("grape");
//   sink.close();
// }

/// #18

// void main(){
//   final constroler = StreamController(
//     onPause: () => print("Paused"),
//     onResume: () => print("Resumed"),
//     onCancel: () => print("Canselled"),
//     onListen: () => print("Listens"),
//   );
//   final stream = constroler.stream;
//   final sink = constroler.sink;
//   late StreamSubscription subscription;
//   subscription = stream.listen((event){
//     print(event);
//     if(event == "grape"){
//       subscription.pause(Future.delayed(const Duration(seconds: 2)));
//     }
//   },
//     onError: (Object? error) => print(error),
//     onDone: () => print("Sink closed"),
//   );
//   sink.add("grape");
//   sink.add("apple");
//   sink.addError(Exception("cherry"));
//   sink.close();
// }

/// #19

//
// void main(){
//   final streamControler = StreamController<int>();
//   int number = 1;
//
//   addData(){
//     Timer.periodic(Duration(seconds: 1), (_) {
//       if(number == 5){
//         streamControler.close();
//         return;
//       }
//       streamControler.sink.add(number);
//       number++;
//     });
//   }
//   addData();
//   Stream<int> myStream = streamControler.stream;
//   final subscription = myStream.listen((data) => print(data),
//     onDone: () => print("All data receved"),
//   );
// }

/// 20 snepshot 1

// Stream<int> naturalGenerate(int n)async*{
//   int k = 0;
//
//   while(k < n){
//     k++;
//     await Future.delayed(const Duration(seconds: 1));
//     if(k == 4){
//       yield* Stream.error("error: $k");
//     }else{
//       yield k;
//     }
//   }
// }
//
// void main(){
//   runApp(LearnSream());
// }
//
// class LearnSream extends StatelessWidget {
//   const LearnSream({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return const MaterialApp(
//       home: Home(),
//     );
//   }
// }
//
// class Home extends StatefulWidget {
//   const Home({Key? key}) : super(key: key);
//
//   @override
//   State<Home> createState() => _HomeState();
// }
//
// class _HomeState extends State<Home> {
//   int number = 0;
//
//   @override
//   void initState() {
//     super.initState();
//     final stream = naturalGenerate(10);
//     stream.listen((data) {
//       setState(() {
//         number = data;
//       },);
//     },
//     onError: (e,s) => print("Error: $number"),
//     onDone: () => ScaffoldMessenger.of(context).showSnackBar(
//       const SnackBar(content: Text("Tamam")),
//     ),
//     );
//   }
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Center(
//         child: Text("$number",style: const TextStyle(fontSize: 30),),
//       ),
//     );
//   }
// }

/// 21 snepshot 2

// Stream<int> naturalGenerate(int n)async*{
//   int k = 0;
//
//   while(k < n){
//     k++;
//     await Future.delayed(const Duration(seconds: 1));
//     if(k == 4){
//       yield* Stream.error("error: $k");
//     }else{
//       yield k;
//     }
//   }
// }
//
// void main(){
//   runApp(LearnSream());
// }
//
// class LearnSream extends StatelessWidget {
//   const LearnSream({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return const MaterialApp(
//       home: Home(),
//     );
//   }
// }
//
// class Home extends StatefulWidget {
//   const Home({Key? key}) : super(key: key);
//
//   @override
//   State<Home> createState() => _HomeState();
// }
//
// class _HomeState extends State<Home> {
//   int number = 0;
//   StreamSubscription<int>? subscription;
//   @override
//   void initState() {
//     super.initState();
//     final stream = naturalGenerate(10);
//     subscription = stream.listen(null);
//     subscription?.onData((data) {
//       setState(() {
//         number = data;
//       },);},);
//     subscription?.onError((e) => ScaffoldMessenger.of(context).showSnackBar(
//       const SnackBar(backgroundColor: Colors.red,content: Text("Error")),));
//   }
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       floatingActionButton: FloatingActionButton(
//         onPressed: () {
//           subscription?.cancel();
//         },
//         child: const Icon(Icons.stop),
//       ),
//       body: Center(
//         child: Text("$number",style: const TextStyle(fontSize: 30),),
//       ),
//     );
//   }
// }

/// 21 snepshot 3

//
// Stream<int> naturalGenerate(int n)async*{
//   int k = 0;
//
//   while(k < n){
//     k++;
//     await Future.delayed(const Duration(seconds: 1));
//     if(k == 4){
//       yield* Stream.error("error: $k");
//     }else{
//       yield k;
//     }
//   }
// }
//
// void main(){
//   runApp(LearnSream());
// }
//
// class LearnSream extends StatelessWidget {
//   const LearnSream({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return const MaterialApp(
//       home: Home(),
//     );
//   }
// }
//
// class Home extends StatefulWidget {
//   const Home({Key? key}) : super(key: key);
//
//   @override
//   State<Home> createState() => _HomeState();
// }
//
// class _HomeState extends State<Home> {
//   int number = 0;
//   StreamSubscription<int>? subscription;
//   @override
//   void initState() {
//     super.initState();
//     final stream = naturalGenerate(10);
//     subscription = stream.listen(null);
//     subscription?.onData((data) {
//       setState(() {
//         number = data;
//       },);},);
//
//     subscription?.onError((e) => ScaffoldMessenger.of(context).showSnackBar(
//       const SnackBar(backgroundColor: Colors.red,content: Text("Error")),),
//     );
//     subscription?.onDone(() => ScaffoldMessenger.of(context).showSnackBar(
//       const SnackBar(backgroundColor: Colors.green,content: Text("Tamam")),),
//     );
//   }
//
//   @override
//   void dispose() {
//     super.dispose();
//     subscription?.cancel();
//   }
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       floatingActionButton: FloatingActionButton(
//         onPressed: () {
//           if(subscription!.isPaused){
//             subscription?.resume();
//           }else {
//             subscription?.pause();
//           }
//           setState(() {});
//         },
//         child:  Icon(subscription!.isPaused ? Icons.play_arrow : Icons.stop),
//       ),
//       body: Center(
//         child: Text("$number",style: const TextStyle(fontSize: 30),),
//       ),
//     );
//   }
// }

/// Home task

/// #1

/*
Stream<int> stepStep(int n)async*{

  for(int i = 0; i < n; i++){
    await Future.delayed(const Duration(seconds: 1));
    yield* Stream.value(n);
  }
}

void main(){
  final stream = stepStep(3);
  StreamSubscription<int>? number;

  number = stream.listen((data) {
    print(data);
  },);
  number.onError((e,s) => print("Error => $e"));
  number.onDone(() => print("Done"));
}
*/

/// #2

/*
Stream<int>recFibonachi(int n) async*{
  if (n == 0 || n == 1) {
    yield n;
  } else{
    int n1 = 0;
    int n2 = 1;
    int n3 = 0;
    for(int i = 2; i < n;i++) {
      n3 = n1 + n2;
      n1 = n2;
      n2 = n3;
      if(n3.isEven) {
        await Future.delayed(const Duration(seconds: 3));
        yield* Stream.value(n3);
      }else if(n3.isOdd){
        await Future.delayed(const Duration(seconds: 1));
        yield* Stream.value(n3);
      }
    }
  }
}

void main(){
  final data = recFibonachi(16).asBroadcastStream();

  StreamSubscription<int>? result;

  result = data.listen((item) {
    print(item);
  },
  );
  result.onError((e,s) => print("Error => $e"));
  result.onDone(() => print("Done"));
}

 */

/// #4
//
// void main(){
//   final result = Stream<int>.periodic(const Duration(milliseconds: 300),(item){
//     if(item % 3 == 0){
//       return item;
//     }
//     return 0;
//   }).take(61);
//  StreamSubscription<int>? number;
//  number = result.listen((item) {
//
//    if(item % 5 == 0){
//      number?.pause(
//          Future.delayed( const Duration(seconds: 5)));
//      print(item);
//    }
//  });
//   number.onError((e,s) => print("Error => $e"));
//   number.onDone(() => print("Done"));
// }

/// # 5
//
// Stream<int> naturalNumber()async*{
//   for(int i = 0; i < 20;i++){
//     yield Random().nextInt(10);
//   }
// }
//  /// notugri ishlayapti
// void main(){
//   final data = naturalNumber();
//   StreamSubscription<int>? random;
//   random = data.listen((item) {
//     print(item);
//     if(item % 2 == 0 || item % 3 == 0 || item % 5 == 0){
//       print("tamom");
//       random?.pause();
//     }
//   },
//   );
// }

/// #6

/// a
/*
Stream<int> naturalGenerator(int n)async*{
  for(int i = 0; i < n;i++){
    await Future.delayed(const Duration(seconds: 1));
    yield i;
  }
}

void main(){
  final stream = naturalGenerator(20);
  StreamSubscription<int>? subscription;
  subscription = stream.listen((event) => print(event));
}
*/

/// b
// void main()async{
//   StreamSubscription<int>? subscription1, subscription2;
//   int n = 20;
//   final stream1 = naturalGenerator(n);
//   final stream2 = naturalGenerator(n);
//
//   subscription1 = stream1
//       .take(n)
//       .listen((v) => print("S1: $v"));
//
//   subscription2 = stream2.take(n).listen(
//         (v) {
//       print(" S2: $v");
//       if(v == n~/2) {
//         subscription2!.pause(Future.delayed(const Duration(seconds: 10)));
//       }
//     },
//   );
//
// }

/// c

// Stream<int> naturalGenerator(int n)async*{
//   for(int i = 0; i < n;i++){
//     await Future.delayed(const Duration(seconds: 1));
//     yield i;
//   }
// }
//
// void main()async{
//   StreamSubscription<int>? subscription1, subscription2;
//   int n = 20;
//   final stream1 = naturalGenerator(n);
//   final stream2 = naturalGenerator(n);
//
//   subscription1 = stream1.take(n).listen((value){
//     print(value);
//     if(value % 7 == 0){
//       subscription1?.pause();
//     }
//   });
//
//   subscription2 = stream2.take(n).listen(
//         (v) {
//       print(" S2: $v");
//       if(v == n~/2) {
//         subscription2!.pause(Future.delayed(const Duration(seconds: 10)));
//       }
//     },
//   );
//
// }

/// d

/// ishlamadi

// Stream<int> naturalGenerator(int n)async*{
//   for(int i = 0; i < n;i++){
//     Future.delayed(const Duration(seconds: 1));
//     yield i;
//   }
// }
//
// void main()async{
//   StreamSubscription<int>? subscription1, subscription2,subscription3;
//   int n = 30;
//   final stream = naturalGenerator(n);
//
//   subscription1 = stream.take(n).listen(
//         (v) {
//           print(" S1: $v");
//           if(v == 10) {
//             subscription1?.pause();
//       }
//     },
//   );
//   subscription2 = stream.take(n).listen(
//         (v) {
//       print(" S2: $v");
//       if(v >= 10 && v <= 20) {
//         subscription2?.pause();
//       }
//     },
//   );
//   subscription3 = stream.take(n).listen(
//         (v) {
//       print(" S3: $v");
//       if(v >= 20 && v <= 30) {
//         subscription3?.pause();
//       }
//     },
//   );
// }

/// STream two Lesson

// void main(){
//   final sreamController = StreamController<int>();
//   int number = 1;
//
//   addData(){
//     Timer.periodic(const Duration(seconds: 1), (_) {
//      if(number == 5){
//        sreamController.close();
//        return;
//      }
//      sreamController.sink.add(number);
//      number++;
//     });
//   }
//   addData();
//
//   Stream<int>myStream = sreamController.stream;
//   final subscrein = myStream.listen((data) => print(data),onDone: () => print("All data reviced"));
//
// }
//
// void main() => runApp(const MaterialApp(home: App(),));
//
//
// class App extends StatelessWidget {
//   const App({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return Home();
//   }
// }
//
// class Home extends StatelessWidget {
//   final counter = Counter();
//   Home({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Center(
//         child: StreamBuilder<int>(
//           initialData: counter.count,
//           stream: counter._controller.stream,
//           builder: (context, snapshot) {
//             return Text("Conter: ${snapshot.data}",style: const TextStyle(fontSize: 30),);
//           },
//         ),
//       ),
//       floatingActionButton:  FloatingActionButton.extended(
//         onPressed: null,
//         label: Row(
//           children: [
//             IconButton(
//               onPressed: counter.increment,
//               icon: const Icon(Icons.add),
//             ),
//             IconButton(
//               onPressed: counter.decrement,
//               icon: const Icon(Icons.remove),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
//
// class Counter{
//   int count = 0;
//   final StreamController<int> _controller = StreamController();
//
//   final _tranform = StreamTransformer<int,String>.fromHandlers(
//     handleData: (data,sink){
//       sink.add("data: $data");
//     },
//     handleError: (error,stackTrance,sink) => sink.add("Error"),
//   );
//
// Stream<String> get stream => _tranform.bind(_controller.stream);
//
//   void increment() {
//     if(count == 2){
//       count++;
//       _controller.sink.addError("Error");
//     }else {
//       _controller.sink.add(++count);
//     }
//   }
//
//   void decrement() {
//     _controller.sink.add(--count);
//   }
// }

/// #1
// class App extends StatelessWidget {
//   const App({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return const MaterialApp(
//       home: Home(),
//     );
//   }
// }

//
// class Home extends StatefulWidget {
//   const Home({Key? key}) : super(key: key);
//
//   @override
//   State<Home> createState() => _HomeState();
// }
//
// class _HomeState extends State<Home> {
//   StreamController controller = StreamController();
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Center(
//         child: StreamBuilder<int>(
//           stream: numberGenerator(),
//           initialData: 0,
//           builder: (context,snapshot) {
//            return Column(
//              mainAxisSize: MainAxisSize.min,
//              children: [
//                Text("state: ${snapshot.connectionState}",style: const TextStyle(fontSize: 30),),
//                const SizedBox(height: 10,),
//                if(snapshot.hasData)Text("Data: ${snapshot.data}",style: const TextStyle(fontSize: 30),),
//                if(snapshot.hasError)Text("Error: ${snapshot.error}",style: const TextStyle(fontSize: 30),),
//              ],
//            );
//           },),
//       ),
//     );
//   }
// }
//
// Stream<int>numberGenerator() async*{
//   for(int i = 1; i <= 10;i++){
//     if(i == 5){
//       yield* Stream.error("Error");
//     }
//     await Future.delayed(const Duration(seconds: 1));
//     yield i;
//   }
// }

/// stream one
/*
Stream<int> naturalGenerator(int n) async* {
  int k = 0;

  while (k < n) {
    k++;
    print(k);
    await Future.delayed(const Duration(seconds: 1));
    if (k == 4) {
      yield* Stream<int>.error("error");
    } else {
      yield k;
    }
  }
}

void main() => runApp(const LearnStream());

class LearnStream extends StatelessWidget {
  const LearnStream({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      themeMode: ThemeMode.light,
      theme: ThemeData.light(useMaterial3: true),
      home: const HomeOne(),
    );
  }
}

class HomeOne extends StatefulWidget {
  const HomeOne({Key? key}) : super(key: key);

  @override
  State<HomeOne> createState() => _HomeOneState();
}

class _HomeOneState extends State<HomeOne> {
  int number = 0;
  StreamSubscription<int>? subscription;
  Stream<int>? stream;

  @override
  void initState() {
    super.initState();
    stream = naturalGenerator(10).asBroadcastStream();
    subscription = stream?.listen(null);

    subscription?.onData((data) {
      setState(() {
        number = data;
      });
    });
    subscription?.onError((error) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(backgroundColor: Colors.red, content: Text("Error: $error")),
      );
    });
    subscription?.onDone(() {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(backgroundColor: Colors.blue, content: Text("Tamam")),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          if(subscription!.isPaused){
            subscription!.resume();
          }else{
            subscription!.pause();
          }
          setState(() {});
        },
        child:  Icon(subscription!.isPaused? Icons.play_arrow : Icons.stop),
      ),
      body: Center(
        child: Text("data: $number"),
      ),
    );
  }
}
*/