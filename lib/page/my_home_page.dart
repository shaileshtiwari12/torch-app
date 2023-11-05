import 'package:flutter/material.dart';
import 'package:torch_controller/torch_controller.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});
  

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final controller = TorchController();
  var isActive = false;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 11, 10, 31),
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 11, 10, 31),
        centerTitle: true,
        title: const Text(
          'Torch',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Center(
        child: Column(
          children: [
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    isActive
                        ? 'assets/images/on.webp'
                        : 'assets/images/off.webp',
                    width: 200,
                    height: 200,
                  ),
                  SizedBox(
                    height: size.height * 0.1,
                  ),
                  CircleAvatar(
                    minRadius: 30,
                    maxRadius: 45,
                    child: Transform.scale(
                      scale: 2,
                      child: IconButton(
                        onPressed: () {
                          controller.toggle(intensity: 1);
                          isActive = !isActive;
                          setState(() {});
                        },
                        icon: const Icon(
                          Icons.power_settings_new,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const Text(
              'Made by: Shailesh tiwari',
              style: TextStyle(fontSize: 14, color: Colors.white),
            ),
            SizedBox(
              height: size.height * 0.02,
            ),
          ],
        ),
      ),
    );
  }
}
