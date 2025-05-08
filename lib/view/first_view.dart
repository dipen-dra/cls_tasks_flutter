// import 'package:flutter/material.dart';

// class FirstView extends StatefulWidget {
//   const FirstView({super.key});

//   @override
//   State<FirstView> createState() => _FirstViewState();
// }

// class _FirstViewState extends State<FirstView> {
//   // int first = 0;
//   // int second = 0;
//   int result = 0;

//   // textEditiingController
//   final firstContoller = TextEditingController();
//   final secondContoller = TextEditingController();

//   // step 1. key
//   final myKey = GlobalKey<FormState>();

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text("Arithmetic View"),
//         centerTitle: true,
//         backgroundColor: Colors.amber,
//         elevation: 0,
//       ),
//       body: Padding(
//         padding: const EdgeInsets.all(8.0),
//         child: Form(
//           key: myKey,
//           child: Column(
//             children: [
//               TextFormField(
//                 decoration: InputDecoration(
//                   labelText: 'Enter first no',
//                   border: OutlineInputBorder(
//                     borderRadius: BorderRadius.circular(8),
//                     borderSide: BorderSide(color: Colors.amber, width: 2),
//                   ),
//                 ),
//                 keyboardType: TextInputType.number,
//                 controller: firstContoller,
//                 validator: (value) {
//                   if (value == null || value.isEmpty) {
//                     return 'Please enter first number';
//                   }
//                   return null;
//                 },
//               ),
//               SizedBox(height: 8),
//               TextFormField(
//                 decoration: InputDecoration(
//                   hintText: 'Enter second no',
//                   border: OutlineInputBorder(
//                     borderRadius: BorderRadius.circular(8),
//                     borderSide: BorderSide(color: Colors.amber, width: 2),
//                   ),
//                 ),
//                 keyboardType: TextInputType.number,
//                 validator: (value) {
//                   if (value == null || value.isEmpty) {
//                     return 'Please enter second number';
//                   }
//                   return null;
//                 },
//                 controller: secondContoller,
//               ),
//               SizedBox(height: 8),
//               SizedBox(
//                 width: double.infinity,
//                 child: ElevatedButton(
//                   style: ElevatedButton.styleFrom(
//                     backgroundColor: Colors.green,
//                     shape: RoundedRectangleBorder(
//                       borderRadius: BorderRadius.circular(8),
//                     ),
//                   ),
//                   onPressed: () {
//                     if (myKey.currentState!.validate()) {
//                       // Logic
//                       int first = int.parse(firstContoller.text);
//                       int second = int.parse(secondContoller.text);
//                       setState(() {
//                         result = first + second;
//                       });
//                     }
//                   },
//                   child: Text("Add"),
//                 ),
//               ),
//               SizedBox(height: 8),
//               Text(
//                 "Result : $result",
//                 style: TextStyle(fontSize: 20, color: Colors.black),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
// import 'package:flutter/material.dart';

// class FirstView extends StatefulWidget {
//   const FirstView({super.key});

//   @override
//   State<FirstView> createState() => _FirstViewState();
// }

// class _FirstViewState extends State<FirstView> {
//   int result = 0;

//   final firstContoller = TextEditingController();
//   final secondContoller = TextEditingController();

//   final myKey = GlobalKey<FormState>();

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text("Arithmetic View"),
//         centerTitle: true,
//         backgroundColor: const Color.fromARGB(255, 179, 22, 69),
//         elevation: 0,
//       ),
//       body: Padding(
//         padding: const EdgeInsets.all(8.0),
//         child: Form(
//           key: myKey,
//           child: Column(
//             children: [
//               TextFormField(
//                 decoration: InputDecoration(
//                   labelText: 'Enter first number',
//                   border: OutlineInputBorder(
//                     borderRadius: BorderRadius.circular(8),
//                     borderSide: const BorderSide(color: Color.fromARGB(255, 221, 10, 133), width: 2),
//                   ),
//                 ),
//                 keyboardType: TextInputType.number,
//                 controller: firstContoller,
//                 validator: (value) {
//                   if (value == null || value.isEmpty) {
//                     return 'Please enter the first number';
//                   }
//                   if (int.tryParse(value) == null) {
//                     return 'Enter a valid integer';
//                   }
//                   return null;
//                 },
//               ),
//               const SizedBox(height: 8),
//               TextFormField(
//                 decoration: InputDecoration(
//                   labelText: 'Enter second number',
//                   border: OutlineInputBorder(
//                     borderRadius: BorderRadius.circular(8),
//                     borderSide: const BorderSide(color: Colors.amber, width: 2),
//                   ),
//                 ),
//                 keyboardType: TextInputType.number,
//                 controller: secondContoller,
//                 validator: (value) {
//                   if (value == null || value.isEmpty) {
//                     return 'Please enter the second number';
//                   }
//                   if (int.tryParse(value) == null) {
//                     return 'Enter a valid integer';
//                   }
//                   return null;
//                 },
//               ),
//               const SizedBox(height: 8),
//               SizedBox(
//                 width: double.infinity,
//                 child: ElevatedButton(
//                   style: ElevatedButton.styleFrom(
//                     backgroundColor: Colors.green,
//                     shape: RoundedRectangleBorder(
//                       borderRadius: BorderRadius.circular(8),
//                     ),
//                   ),
//                   onPressed: () {
//                     if (myKey.currentState!.validate()) {
//                       int first = int.parse(firstContoller.text);
//                       int second = int.parse(secondContoller.text);
//                       setState(() {
//                         result = first + second;
//                       });
//                     }
//                   },
//                   child: const Text("Add"),
//                 ),
//               ),
//               const SizedBox(height: 8),
//               Text(
//                 "Result : $result",
//                 style: const TextStyle(fontSize: 20, color: Colors.black),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
import 'package:flutter/material.dart';

class FirstView extends StatefulWidget {
  const FirstView({super.key});

  @override
  State<FirstView> createState() => _FirstViewState();
}

class _FirstViewState extends State<FirstView> {
  int result = 0;

  final firstContoller = TextEditingController();
  final secondContoller = TextEditingController();

  final myKey = GlobalKey<FormState>();

  @override
  void dispose() {
    // Dispose controllers to prevent memory leaks
    firstContoller.dispose();
    secondContoller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Arithmetic View"),
        centerTitle: true,
        backgroundColor: const Color.fromARGB(255, 179, 22, 69),
        elevation: 0,
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Form(
                key: myKey,
                child: Column(
                  children: [
                    TextFormField(
                      decoration: InputDecoration(
                        labelText: 'Enter first number',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
                      ),
                      keyboardType: TextInputType.number,
                      controller: firstContoller,
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter the first number';
                        }
                        if (int.tryParse(value) == null) {
                          return 'Enter a valid integer';
                        }
                        return null;
                      },
                    ),
                    const SizedBox(height: 8),
                    TextFormField(
                      decoration: InputDecoration(
                        labelText: 'Enter second number',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
                      ),
                      keyboardType: TextInputType.number,
                      controller: secondContoller,
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter the second number';
                        }
                        if (int.tryParse(value) == null) {
                          return 'Enter a valid integer';
                        }
                        return null;
                      },
                    ),
                    const SizedBox(height: 8),
                    SizedBox(
                      width: double.infinity,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.green,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8),
                          ),
                        ),
                        onPressed: () {
                          if (myKey.currentState!.validate()) {
                            int first = int.parse(firstContoller.text);
                            int second = int.parse(secondContoller.text);
                            setState(() {
                              result = first + second;
                            });
                          }
                        },
                        child: const Text("Add"),
                      ),
                    ),
                    const SizedBox(height: 8),
                    Text(
                      "Result : $result",
                      style: const TextStyle(fontSize: 20, color: Colors.black),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}


              // 👇 Bottom icon bar
//               Container(
//                 padding: const EdgeInsets.symmetric(vertical: 16),
//                 decoration: BoxDecoration(
//                   border: Border.all(color: Colors.black),
//                   borderRadius: BorderRadius.circular(10),
//                 ),
//                 child: Row(
//                   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                   children: const [
//                     IconTextButton(
//                       icon: Icons.call,
//                       label: 'CALL',
//                       onPressed: _noop,
//                     ),
//                     IconTextButton(
//                       icon: Icons.near_me,
//                       label: 'ROUTE',
//                       onPressed: _noop,
//                     ),
//                     IconTextButton(
//                       icon: Icons.share,
//                       label: 'SHARE',
//                       onPressed: _noop,
//                     ),
//                   ],
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }

//   static void _noop() {}
// }

// class IconTextButton extends StatelessWidget {
//   final IconData icon;
//   final String label;
//   final VoidCallback onPressed;

//   const IconTextButton({
//     super.key,
//     required this.icon,
//     required this.label,
//     required this.onPressed,
//   });

//   @override
//   Widget build(BuildContext context) {
//     return InkWell(
//       onTap: onPressed,
//       child: Column(
//         mainAxisSize: MainAxisSize.min,
//         children: [
//           Icon(icon, color: Colors.teal),
//           const SizedBox(height: 4),
//           Text(
//             label,
//             style: const TextStyle(color: Color.fromRGBO(244, 67, 54, 1)),
//           ),
//         ],
//       ),
//     );
//   }
// }

