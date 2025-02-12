
import 'package:flutter/material.dart';


class FlutterCoursePage extends StatelessWidget {
  const FlutterCoursePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        buildModules(),
      ],
    );
  }

  Widget buildModules() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Divider(),
        Center(
            child: Text(
          "Modules",
          style: const TextStyle(
            fontWeight: FontWeight.bold,
          ),
        )),
        SingleChildScrollView(
          padding: EdgeInsets.only(top: 30),
          child: Expanded(
            child: Row(
              children: [
                Expanded(
                  child: ContainerIconwithText(
                    color: Colors.blue,
                    icon: Icons.book_sharp,
                    label: 'Introduction',
                  ),
                ),
                Expanded(
                    child: ContainerIconwithText(
                        color: Colors.red,
                        icon: Icons.design_services,
                        label: "UX design")),
                Expanded(
                    child: ContainerIconwithText(
                        color: Colors.orange,
                        icon: Icons.storage,
                        label: "State Management")),
                Expanded(
                    child: ContainerIconwithText(
                        color: Colors.grey,
                        icon: Icons.bug_report,
                        label: "Testing")),
                Expanded(
                    child: ContainerIconwithText(
                        color: Colors.blue,
                        icon: Icons.network_check,
                        label: "Networking")),
              ],
            ),
          ),
        ),
        Text(""),
        Divider()
      ],
    );
  }

  Widget buildProjectList() {
    return Container(
      child: ListView(
        padding: const EdgeInsets.all(12),
        children: <Widget>[
          Container(
            height: 50,
            padding: EdgeInsets.all(12),
            margin: EdgeInsets.symmetric(vertical: 10),
            decoration: BoxDecoration(
              color: const Color.fromARGB(255, 214, 213, 211),
              border: Border.all(
                  color: const Color.fromARGB(255, 242, 240, 240), width: 1),
              borderRadius: BorderRadius.circular(7),
            ),
            child: const Center(
              child: Row(
                children: [
                  Icon(Icons.folder, color: Colors.blueAccent),
                  const Text('  Sudoku'),
                  Spacer(flex: 2),
                  Icon(
                    Icons.more_vert_rounded,
                  ),
                ],
              ),
            ),
          ),
          Container(
            height: 50,
            padding: EdgeInsets.all(12),
            margin: EdgeInsets.symmetric(vertical: 10),
            decoration: BoxDecoration(
              color: const Color.fromARGB(255, 214, 213, 211),
              border: Border.all(
                  color: const Color.fromARGB(255, 242, 240, 240), width: 1),
              borderRadius: BorderRadius.circular(7),
            ),
            child: const Center(
              child: Row(
                children: [
                  Icon(Icons.folder, color: Colors.blueAccent),
                  const Text('  Random user'),
                  Spacer(flex: 2),
                  /*3*/
                  Icon(
                    Icons.more_vert_rounded,
                  ),
                ],
              ),
            ),
          ),
          Container(
            height: 50,
            padding: EdgeInsets.all(12),
            margin: EdgeInsets.symmetric(vertical: 10),
            decoration: BoxDecoration(
              color: const Color.fromARGB(255, 214, 213, 211),
              border: Border.all(
                  color: const Color.fromARGB(255, 242, 240, 240), width: 1),
              borderRadius: BorderRadius.circular(7),
            ),
            child: const Center(
              child: Row(
                children: [
                  Icon(Icons.folder, color: Colors.blueAccent),
                  const Text('  Note Taking'),
                  Spacer(flex: 2),
                  /*3*/
                  Icon(
                    Icons.more_vert_rounded,
                  ),
                ],
              ),
            ),
          ),
          Container(
            height: 50,
            padding: EdgeInsets.all(12),
            margin: EdgeInsets.symmetric(vertical: 10),
            decoration: BoxDecoration(
              color: const Color.fromARGB(255, 214, 213, 211),
              border: Border.all(
                  color: const Color.fromARGB(255, 242, 240, 240), width: 1),
              borderRadius: BorderRadius.circular(7),
            ),
            child: const Center(
              child: Row(
                children: [
                  Icon(Icons.folder, color: Colors.blueAccent),
                  const Text('  Weather'),
                  Spacer(flex: 2),
                  /*3*/
                  Icon(
                    Icons.more_vert_rounded,
                  ),
                ],
              ),
            ),
          ),
          Container(
            height: 50,
            padding: EdgeInsets.all(12),
            margin: EdgeInsets.symmetric(vertical: 10),
            decoration: BoxDecoration(
              color: const Color.fromARGB(255, 214, 213, 211),
              border: Border.all(
                  color: const Color.fromARGB(255, 242, 240, 240), width: 1),
              borderRadius: BorderRadius.circular(7),
            ),
            child: const Center(
              child: Row(
                children: [
                  Icon(Icons.folder, color: Colors.blueAccent),
                  const Text('  Delivery App'),
                  Spacer(flex: 2),
                  /*3*/
                  Icon(
                    Icons.more_vert_rounded,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class ContainerIconwithText extends StatelessWidget {
  const ContainerIconwithText({
    // definimos lo que tendran los botones
    super.key,
    required this.color,
    required this.icon,
    required this.label,
  });

  final Color color;
  final IconData icon;
  final String label;

  @override
  Widget build(BuildContext context) {
    return Column(
      // cada fila tiene una columna
      children: [
        Container(
          height: 90,
          width: 70,
          // contenedor donde va el icono
          decoration: BoxDecoration(
            color: const Color.fromARGB(255, 241, 240, 240),
            border: Border.all(
                color: const Color.fromARGB(255, 242, 240, 240), width: 1),
            borderRadius: BorderRadius.circular(7),
          ),
          child: Center(
            // icono
            child: Icon(icon, color: color),
          ),
        ),
        Text(""),
        Text(label) // texto abajo
      ],
    );
  }
}
