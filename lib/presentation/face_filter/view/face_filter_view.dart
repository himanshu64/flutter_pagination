
import 'package:auto_route/annotations.dart';

import 'package:flutter/material.dart';

@RoutePage()
class FilterScreen extends StatefulWidget {
  const FilterScreen({super.key});

  @override
  State<FilterScreen> createState() => _FilterScreenState();
}

class _FilterScreenState extends State<FilterScreen> {
  // ArCoreFaceController? arCoreFaceController;

  @override
  void initState() {
    // _checkArcoreFunctionality();
    super.initState();
  }

  // _checkArcoreFunctionality() async {
  //     print('ARCORE IS AVAILABLE?');
  // print(await ArCoreController.checkArCoreAvailability());
  // print('\nAR SERVICES INSTALLED?');
  // print(await ArCoreController.checkIsArCoreInstalled());
  // }


  // void _onArCoreViewCreated(ArCoreFaceController controller) {
  //   arCoreFaceController = controller;
  //   loadMesh();
  // }

  // loadMesh() async {
  //   final ByteData textureBytes =
  //       await rootBundle.load('assets/fox_face_mesh_texture.png');

  //   arCoreFaceController?.loadMesh(
  //       textureBytes: textureBytes.buffer.asUint8List(),
  //       skin3DModelFilename: 'fox_face.sfb');
  // }



  @override
  void dispose() {
    // arCoreFaceController?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: const Text('DeepAR Camera Example comming soon...'),
      ),
      body: const Stack(
        children: [
          
        //   ArCoreFaceView(
        //   onArCoreViewCreated: _onArCoreViewCreated,
        //   enableAugmentedFaces: true,


        // )
        ],
      ),
    );
  }
}
