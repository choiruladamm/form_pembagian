import 'package:flutter/material.dart';

class FormPembagian extends StatefulWidget {
  const FormPembagian({super.key, required TextEditingController controller});

  @override
  State<FormPembagian> createState() => _FormPembagianState();
}

class _FormPembagianState extends State<FormPembagian> {
  final inputSatu = TextEditingController();
  final inputDua = TextEditingController();
  final total = TextEditingController();
  double? hasil;
  double? bagi;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          SizedBox(
            height: 100,
            child: Stack(
              children: <Widget>[
                ClipPath(
                  clipper: CustomShape(),
                  child: Container(
                    height: 150,
                    color: const Color.fromARGB(255, 21, 72, 76),
                  ),
                ),
              ],
            ),
          ),
          // const SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.only(
              right: 20,
              left: 20,
            ),
            child: Column(
              children: [
                TextField(
                  controller: inputSatu,
                  decoration: InputDecoration(
                    labelText: "Input nilai pertama",
                    labelStyle: const TextStyle(
                      fontSize: 15,
                      color: Color.fromARGB(255, 21, 72, 76),
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(50),
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                TextField(
                  controller: inputDua,
                  decoration: InputDecoration(
                    labelText: "Input nilai kedua",
                    labelStyle: const TextStyle(
                      fontSize: 15,
                      color: Color.fromARGB(255, 21, 72, 76),
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(50),
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                TextField(
                  controller: total,
                  decoration: InputDecoration(
                    labelText: "Hasil bagi",
                    labelStyle: const TextStyle(
                      fontSize: 15,
                      color: Color.fromARGB(255, 21, 72, 76),
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(50),
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                GestureDetector(
                  onTap: () {
                    bagi = double.parse(inputSatu.text) /
                        double.parse(inputDua.text);
                    hasil = bagi;
                    total.text = hasil.toString();
                  },
                  child: Container(
                    alignment: Alignment.center,
                    height: 50,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 21, 72, 76),
                      borderRadius: BorderRadius.circular(50),
                    ),
                    child: const Icon(
                      Icons.list,
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class CustomShape extends CustomClipper<Path> {
  @override
  Path getClip(size) {
    // ignore: unused_local_variable
    var path = Path();
    double height = size.height;
    double width = size.width;
    path.lineTo(0, height - 100);
    path.quadraticBezierTo(width / 2, height, width, height - 100);
    path.lineTo(width, 0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return true;
  }
}
