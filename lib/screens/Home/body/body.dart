// import 'package:flutter/material.dart';
// import 'package:flutter/services.dart';
//
// class Body extends StatelessWidget {
//   const Body({Key key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return ListView.builder(
//         itemBuilder: (BuildContext context), int index){
//         return Container(
//           padding: EdgeInsets.symmetric(
//             horizontal: 20,
//             vertical: 15,
//           ),
//           child: Column(
//             children: [
//               Row(
//                 children: [
//                   Container(
//                     padding: EdgeInsets.all(2),
//                     decoration: BoxDecoration(
//                         borderRadius: BorderRadius.all(Radius.circular(40)),
//                         border: Border.all(
//                           width: 2,
//                           color: Theme.of(context).primaryColor,
//                         ),
//                         // shape: BoxShape.circle,
//                         boxShadow: [
//                           BoxShadow(
//                             color: Colors.grey.withOpacity(0.5),
//                             spreadRadius: 2,
//                             blurRadius: 5,
//                           )
//                         ]
//                     ),
//                     child:  CircleAvatar(
//                       radius: 35,
//                       backgroundImage: AssetImage('assets/images/ironman.jpeg'),
//                     ),
//                   ),
//                   Container(
//                     width: MediaQuery.of(context).size.width * 0.65,
//                     padding: EdgeInsets.only(left: 20),
//                     child: Column(
//                       children: [
//                         Row(
//                           mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                           children: [
//                             Text(
//                               'John Doe',
//                               style: TextStyle(
//                                 fontWeight: FontWeight.bold,
//                                 fontSize: 16,
//                               ),
//                             ),
//                             Text(
//                               '12:30 pm',
//                               style: TextStyle(
//                                 fontSize: 11,
//                                 fontWeight: FontWeight.w300,
//                                 color: Colors.black54,
//                               ),
//                             )
//                           ],
//                         ),
//                         SizedBox(
//                           height: 10,
//                         ),
//                         Container(
//                           alignment: Alignment.topLeft,
//                           child: Text(
//                             'Hope you are doing well. I will always be greatful for having you in my life',
//                             style: TextStyle(
//                               fontSize: 14,
//                               color: Colors.black54,
//                             ),
//                             overflow: TextOverflow.ellipsis,
//                             maxLines: 2,
//                           ),
//                         ),
//                       ],
//                     ),
//                   ),
//                 ],
//               ),
//             ],
//           ),
//         );
//     };
//
//   }
// }

// searchFormField(),

  // TextFormField searchFormField() {
  //   return TextFormField(
  //     // keyboardType: TextInputType.name,
  //     decoration: InputDecoration(
  //       hintText: 'Search',
  //       floatingLabelBehavior: FloatingLabelBehavior.always,
  //       prefixIcon: IconButton(
  //         icon: Icon(Icons.search_sharp),
  //         onPressed: (){},
  //       ),
  //     ),
  //   );
  // }

