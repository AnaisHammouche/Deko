import 'package:flutter/material.dart';
import 'package:flutter_application_1/catalogue.dart';
// import 'package:arkit_plugin/arkit_plugin.dart';
// import 'package:vector_math/vector_math_64.dart';

// import 'package:arcore_flutter_plugin/arcore_flutter_plugin.dart';
// import 'package:vector_math/vector_math_64.dart' as vectore;

// import 'package:flutter_gen/gen_l10n/gallery_localizations.dart';
// import 'package:gallery/demos/material/material_demo_types.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  get backgroundImage => null;

  get image => null;

  get style => null;

// This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
      routes: {
          MyCatalogue.tag: (context) => MyCatalogue('CATALOGUE'), 
        },
      );
  }
}



  class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

    @override
  Widget build(BuildContext context) {
    
    return Scaffold(
            appBar: AppBar(
              backgroundColor: Colors.white,
              actions: <Widget>[
                IconButton(
                  icon: const Icon(Icons.favorite),
                  color: Colors.red,
                  onPressed: () {},
                ),
                IconButton(
                  icon: const Icon(Icons.search),
                  color: Colors.black,
                  onPressed: () {},
                ),
                IconButton(
                  icon: const Icon(Icons.menu),
                  color: Colors.black,
                  onPressed: () {},
                ),
              ],
              // title:
              title: Image.asset('assets/DekoLogo.png', height: 78),
            ),
            body: Container(
              
              height: double.infinity,
              width: double.infinity,
              decoration: const BoxDecoration(
                image: DecorationImage(
                    image:
                        AssetImage("assets/spacejoy-IH7wPsjwomc-unsplash.jpg"),
                    fit: BoxFit.cover),
              ),
            ),
            floatingActionButton: FloatingActionButton.extended(
              icon: const Icon(Icons.arrow_forward_rounded),
              backgroundColor: Colors.green.shade800,
              onPressed: () {
                Navigator.of(context).pushNamed(MyCatalogue.tag);
              },
              label: const Text('Catalogue'),
            ));
  }
        
        
  }



// class MyCatalogue extends StatelessWidget {
//   const MyCatalogue({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return const Scaffold(
//     backgroundColor: Colors.white,
//     );
//   }
// }

// ignore: use_key_in_widget_constructors
// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Flutter Demo',
//       theme: ThemeData(
//         primarySwatch: Colors.blue,
//         visualDensity: VisualDensity.adaptivePlatformDensity,
//       ),
//       home: MyHomePage(),
//     );
//   }
// }

// class MyHomePage extends StatefulWidget {
//   // ignore: prefer_const_constructors_in_immutables
//   MyHomePage({Key? key}) : super(key: key);

//   @override
//   _MyHomePageState createState() => _MyHomePageState();
// }

// class _MyHomePageState extends State<MyHomePage> {
// late ArCoreController arCoreController;
// late ArCoreNode node;

// void dipsose(){
//   super.dispose();
//   arCoreController.dispose();
// }

// _onArCoreViewCreated(ArCoreController controller){
//   arCoreController = controller;
//    _addToon(arCoreController);
//   //arCoreController.onPlaneDetected = _handleOnPlaneDetected;
// }

/*_handleOnPlaneDetected(ArCorePlane plane){
  if(node!=null){
    arCoreController.removeNode(nodeName: node.name);
  }
  _addToon(arCoreController, plane);
}*/

// _addToon(ArCoreController controller){
//   final node = ArCoreReferenceNode(
//     name: 'Toon',
//     object3DFileName: 'Toon.sfb',
//     scale: vectore.Vector3(0.5,0.5,0.5),
//     position: vectore.Vector3(0,-1,-1),
//     rotation: vectore.Vector4(0,180,0,0),
//   );
//   controller.addArCoreNode(node);
// }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: ArCoreView(onArCoreViewCreated: _onArCoreViewCreated,
//       enableUpdateListener: true,),
//     );
//   }
// }

// void main() => runApp(const MaterialApp(home: MyApp()));

// class MyApp extends StatefulWidget {
//   const MyApp({Key? key}) : super(key: key);

//   @override
//   _MyAppState createState() => _MyAppState();
// }

// class _MyAppState extends State<MyApp> {
//   late ARKitController arkitController;

//   @override
//   void dispose() {
//     arkitController.dispose();
//     super.dispose();
//   }

//   @override
//   Widget build(BuildContext context) => Scaffold(
//       appBar: AppBar(title: const Text('ARKit in Flutter')),
//       body: ARKitSceneView(onARKitViewCreated: onARKitViewCreated));

//   void onARKitViewCreated(ARKitController arkitController) {
//     this.arkitController = arkitController;
//     final node = ARKitNode(
//         geometry: ARKitSphere(radius: 0.1), position: Vector3(0, 0, -0.5));
//     this.arkitController.add(node);
//   }
// }
