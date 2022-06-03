import 'package:flutter/material.dart';
import 'package:khan_hills/home/view/home_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const Home(),
    );
  }
}

// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:smooth_page_indicator/smooth_page_indicator.dart';
// import 'package:carousel_slider/carousel_slider.dart';

// void main() {
//   runApp(MyApp());
// }

// class MyApp extends StatelessWidget {
//   // This widget is the root of your application.
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Smooth Page Indicator Demo',
//       theme: ThemeData(primarySwatch: Colors.blue),
//       home: HomePage(),
//     );
//   }
// }

// class HomePage extends StatefulWidget {
//   @override
//   _HomePageState createState() => _HomePageState();
// }

// class _HomePageState extends State<HomePage> {
//   final controller = PageController(viewportFraction: 0.8, keepPage: true);

//   @override
//   Widget build(BuildContext context) {
//     final pages = List.generate(
//       6,
//       ((index) => CarouselSlider(
//             items: [
//               Container(
//                   width: double.infinity,
//                   height: 100,
//                   decoration: BoxDecoration(
//                       border: Border.all(color: Colors.black, width: 1),
//                       borderRadius: BorderRadius.circular(10)),
//                   child: Text('text '))
//             ],
//             options: CarouselOptions(
//               viewportFraction: 1,
//               enableInfiniteScroll: true,
//               height: 100,
//               autoPlayInterval: const Duration(seconds: 3),
//               autoPlay: true,
//               autoPlayAnimationDuration: const Duration(milliseconds: 800),
//             ),
//           )),
//       // (index) => Container(
//       //   decoration: BoxDecoration(
//       //     borderRadius: BorderRadius.circular(16),
//       //     color: Colors.grey.shade300,
//       //   ),
//       //   margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
//       //   child: SizedBox(
//       //     height: 280,
//       //     child: Center(
//       //         child: Text(
//       //       "Page $index",
//       //       style: TextStyle(color: Colors.indigo),
//       //     )),
//       //   ),
//       // ),
//     );

//     return Scaffold(
//       body: SafeArea(
//         child: SingleChildScrollView(
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.center,
//             children: [
//               SizedBox(height: 16),
//               SizedBox(
//                 height: 240,
//                 child: PageView.builder(
//                   controller: controller,
//                   // itemCount: pages.length,
//                   itemBuilder: (_, index) {
//                     return pages[index % pages.length];
//                   },
//                 ),
//               ),
//               const Padding(
//                 padding: EdgeInsets.only(top: 24, bottom: 12),
//                 child: Text(
//                   'Worm',
//                   style: TextStyle(color: Colors.black54),
//                 ),
//               ),
//               SmoothPageIndicator(
//                 controller: controller,
//                 count: pages.length,
//                 effect: const WormEffect(
//                   dotHeight: 16,
//                   dotWidth: 16,
//                   type: WormType.thin,
//                   // strokeWidth: 5,
//                 ),
//               ),
             
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }

// final colors = const [
//   Colors.red,
//   Colors.green,
//   Colors.greenAccent,
//   Colors.amberAccent,
//   Colors.blue,
//   Colors.amber,
// ];
