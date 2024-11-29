//
// import 'package:flutter/cupertino.dart';
// import 'package:three_scorers/common/services/local_storage.dart';
//
// // import 'firebase_options.dart';
//
// class Global{
//   static late LocalStorageService storageService;
//
//   static Future init() async{
//     WidgetsFlutterBinding.ensureInitialized();
//     await Firebase.initializeApp(
//       options: DefaultFirebaseOptions.currentPlatform,
//     );
//     storageService = await LocalStorageService().init();
//   }
// }