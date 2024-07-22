import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';


@RoutePage()
class DragScreen extends StatefulWidget {
  const DragScreen({super.key});

  @override
  _DragScreenState createState() => _DragScreenState();
}

class _DragScreenState extends State<DragScreen> {
  Offset position1 = const Offset(50, 50);
  Offset position2 = const Offset(150, 50);
  Offset position3 = const Offset(250, 50);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Draggable Buttons')),
      body: Stack(
        children: [
          buildDraggableButton(1, position1),
          buildDraggableButton(2, position2),
          buildDraggableButton(3, position3),
        ],
      ),
    );
  }

  Widget buildDraggableButton(int id, Offset position) {
    return Positioned(
      left: position.dx,
      top: position.dy,
      child: Draggable<int>(
        data: id,
        feedback: buildButton(id, Colors.grey),
        childWhenDragging: buildButton(id, Colors.grey.withOpacity(0.5)),
        onDragEnd: (details) => setState(() {
          switch (id) {
            case 1:
              position1 = details.offset;
              break;
            case 2:
              position2 = details.offset;
              break;
            case 3:
              position3 = details.offset;
              break;
          }
        }),
        child: buildButton(id, Colors.blue),
      ),
    );
  }

  Widget buildButton(int id, Color color) {

    return ElevatedButton(
      style: ButtonStyle(
        backgroundColor: WidgetStatePropertyAll<Color>(color),
        
      ),
      onPressed: null, child: Text('Button $id', style: const  TextStyle(color: Colors.white),));
  }
}
