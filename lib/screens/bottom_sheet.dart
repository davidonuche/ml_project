// import 'package:flutter/material.dart';

// // Function to navigate back to the previous screen
// void popToPrevious(BuildContext context) {
//   Navigator.pop(context);
// }

// // Function to navigate back to the root screen
// void popToMain(BuildContext context) {
//   Navigator.popUntil(context, (route) => route.isFirst);
// }

// Widget showObjectBottomSheet(BuildContext context, String label, int confidenceLevel) {
//   return Container(
//     color: Colors.grey[500],
//     child: SizedBox(
//       height: 500,
//       width: MediaQuery.of(context).size.width,
//       child: Padding(
//         padding: const EdgeInsets.all(8.0),
//         child: Column(
//           children: [
//             Align(
//               alignment: Alignment.topLeft,
//               child: IconButton(
//                 icon: const Icon(Icons.arrow_back),
//                 onPressed: () {
//                   popToPrevious(context);
//                 },
//               ),
//             ),
//             Expanded(
//               child: Center(
//                 child: Column(
//                   mainAxisAlignment: MainAxisAlignment.center,
//                   children: [
//                     Text(
//                       "It is $label, with $confidenceLevel% confidence",
//                       style: Theme.of(context).textTheme.bodyMedium,
//                     ),
//                     const SizedBox(height: 20),
//                     ElevatedButton(
//                       onPressed: () {
//                         popToMain(context);
//                       },
//                       child: const Text("Back"),
//                     ),
//                   ],
//                 ),
//               ),
//             ),
//           ],
//         ),
//       ),
//     ),
//   );
// }

import 'package:flutter/material.dart';

Widget showObjectBottomSheet(
    BuildContext context, String label, int confidenceLevel) {
  return Container(
    color: Colors.grey[500], // Background color (example: light grey)
    child: SizedBox(
      height: 500,
      width: MediaQuery.of(context).size.width,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Align(
              alignment: Alignment.topLeft,
              child: IconButton(
                icon: const Icon(Icons.arrow_back),
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
            ),
            Expanded(
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "It is $label, with $confidenceLevel% confidence level",
                      style: Theme.of(context).textTheme.bodyMedium,
                    ),
                    const SizedBox(height: 20),
                    ElevatedButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      child: const Text("Back"),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    ),
  );
}
