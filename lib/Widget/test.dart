// import 'package:brand/const/const.dart';
// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
//
// class PhoneWidget extends StatefulWidget {
//   @override
//   _PhoneWidgetState createState() => _PhoneWidgetState();
// }
//
// class _PhoneWidgetState extends State<PhoneWidget> {
//   List<String> _countryCodes = ['+91', '+23'];
//
//   @override
//   Widget build(BuildContext context) {
//     var countryDropDown = Container(
//       decoration: const BoxDecoration(
//         color: Colors.white,
//         border: Border(
//           right: BorderSide(width: 0.5, color: Colors.grey),
//         ),
//       ),
//       height: 45.0,
//       margin: const EdgeInsets.all(3.0),
//       //width: 300.0,
//       child: DropdownButtonHideUnderline(
//         child: ButtonTheme(
//           alignedDropdown: true,
//           child: DropdownButton(
//             items: _countryCodes.map((String value) {
//               return DropdownMenuItem<String>(
//                   value: value,
//                   child: Text(
//                     value,
//                     style: const TextStyle(fontSize: 12.0),
//                   )
//               );
//             }).toList(),
//             onChanged: (value) {
//
//             },
//
//           ),
//         ),
//       ),
//     );
//     return Container(
//       width: double.infinity,
//       margin: const EdgeInsets.only(top: 10.0, bottom: 10.0, right: 3.0),
//       color: Colors.white,
//       child: TextFormField(
//         validator: (value) {
//
//         },
//         keyboardType: TextInputType.number,
//         decoration: InputDecoration(
//             contentPadding: const EdgeInsets.all(12.0),
//             border:  OutlineInputBorder(
//                 borderSide:
//                 BorderSide(color: silverLight, width: 0.1)
//             ),
//           enabledBorder:  OutlineInputBorder(
//               borderRadius: BorderRadius.circular(8),
//               borderSide: BorderSide(color: silverLight,)
//           ),
//           focusedBorder:OutlineInputBorder(
//               borderRadius: BorderRadius.circular(8),
//               borderSide: const BorderSide(color: Colors.white)
//           ),
//             fillColor: Colors.white,
//             prefixIcon: countryDropDown,
//             hintText: 'Phone Number',
//             //labelText: 'Phone Number'
//         ),
//       ),
//     );
//   }
// }