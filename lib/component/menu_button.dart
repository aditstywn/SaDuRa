// ignore_for_file: public_member_api_docs, sort_constructors_first
// import 'package:flutter/material.dart';

// class MenuButton extends StatelessWidget {
// final String label;
// final String? iconPath;
// final bool? isActive;
// final VoidCallback onPressed;
// final double size;
//   const MenuButton({
//     super.key,
//     required this.label,
//     this.iconPath,
//     this.isActive,
//     required this.onPressed,
//     required this.size,
//   });

//   @override
//   Widget build(BuildContext context) {
//     return Flexible(
//       child: InkWell(
//         onTap: onPressed,
//         borderRadius: const BorderRadius.all(
//           Radius.circular(6.0),
//         ),
//         child: Container(
//           width: MediaQuery.of(context).size.width,
//           padding: const EdgeInsets.all(8.0),
//           decoration: BoxDecoration(
//             color: Colors.white,
//             borderRadius: const BorderRadius.all(Radius.circular(6.0)),
//             boxShadow: [
//               BoxShadow(
//                 offset: const Offset(0, 4),
//                 blurRadius: 10.0,
//                 blurStyle: BlurStyle.outer,
//                 spreadRadius: 0,
//                 color: Colors.black.withOpacity(0.2),
//               ),
//             ],
//           ),
//           child: Row(
//             children: [
//               Image.asset(
//                 iconPath!,
// fit: BoxFit.contain,
// width: size,
// height: size,
// color: Colors.white,
//               ),
//               Text(
//                 label,
//                 style: const TextStyle(
//                   color: Colors.white,
//                   fontSize: 12,
//                   fontWeight: FontWeight.w700,
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';

class MenuButton extends StatelessWidget {
  final String label;
  final String? iconPath;
  final bool? isActive;
  final VoidCallback onPressed;
  final double size;
  const MenuButton({
    super.key,
    required this.label,
    this.iconPath,
    this.isActive,
    required this.onPressed,
    required this.size,
  });

  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: InkWell(
        onTap: onPressed,
        child: Container(
          height: 40,
          width: MediaQuery.of(context).size.width,
          padding: const EdgeInsets.all(8.0),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: const BorderRadius.all(Radius.circular(10.0)),
            boxShadow: [
              BoxShadow(
                offset: const Offset(0, 4),
                blurRadius: 10.0,
                blurStyle: BlurStyle.solid,
                // spreadRadius: 0,
                color: Colors.black.withOpacity(0.2),
              ),
            ],
          ),
          child: Row(
            children: [
              Image.asset(
                iconPath!,
                fit: BoxFit.contain,
                width: size,
                height: size,
                // color: Colors.white,
              ),
              Text(
                label,
                style: const TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
