import 'package:flutter/material.dart';

class HomeTab extends StatefulWidget {
  const HomeTab({super.key});

  @override
  State<HomeTab> createState() => _HomeTabState();
}

class _HomeTabState extends State<HomeTab> {

  final data = ["1", "2", "3", "4", "5", "6", "7", "8", "9", "10"];

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey,
      child: GridView.count(
        crossAxisCount: 4,
        padding: const EdgeInsets.all(16),
        mainAxisSpacing: 16,
        crossAxisSpacing: 16,
        children: data.map((e) => _buildBox(40, 40, e)).toList(),
      ),
    );

    // return Container(
    //   color: Colors.grey,
    //   child: ListView.separated(
    //     padding: const EdgeInsets.all(16),
    //     itemCount: data.length,
    //     separatorBuilder: (context, index) => const SizedBox(height: 32),
    //     itemBuilder: (context, index) => _buildBox(40, 40, data[index])
    //   ),
    // );

    // return Container(
    //   color: Colors.grey,
    //   child: ListView(
    //     padding: const EdgeInsets.all(16),
    //     children: [
    //       _buildBox(40, 40, '1'),
    //       _buildBox(40, 40, '2'),
    //       _buildBox(40, 40, '1'),
    //       _buildBox(40, 40, '2'),
    //       SizedBox(
    //         height: 72,
    //         child: ListView(
    //           padding: const EdgeInsets.all(16),
    //           shrinkWrap: true,
    //           physics: const ClampingScrollPhysics(),
    //           scrollDirection: Axis.horizontal,
    //           children: [
    //             _buildBox(40, 40, '1'),
    //             _buildBox(40, 40, '2'),
    //             _buildBox(40, 40, '1'),
    //             _buildBox(40, 40, '2'),
    //             _buildBox(40, 40, '1'),
    //             _buildBox(40, 40, '1'),
    //             _buildBox(40, 40, '2'),
    //             _buildBox(40, 40, '1'),
    //             _buildBox(40, 40, '2'),
    //             _buildBox(40, 40, '1'),
    //             _buildBox(40, 40, '1'),
    //             _buildBox(40, 40, '2'),
    //             _buildBox(40, 40, '1'),
    //             _buildBox(40, 40, '2'),
    //             _buildBox(40, 40, '1'),
    //           ],
    //         ),
    //       ),
    //       ListView(
    //         shrinkWrap: true,
    //         physics: const ClampingScrollPhysics(),
    //         children: [
    //           _buildBox(40, 60, '2'),
    //           _buildBox(40, 60, '1'),
    //           _buildBox(40, 60, '2'),
    //           _buildBox(40, 60, '1'),
    //         ],
    //       ),
    //       _buildBox(40, 40, '2'),
    //       _buildBox(40, 40, '1'),
    //       _buildBox(40, 40, '2'),
    //       _buildBox(40, 40, '1'),
    //       _buildBox(40, 40, '2'),
    //       _buildBox(40, 40, '1'),
    //       _buildBox(40, 40, '2'),
    //       _buildBox(40, 40, '1'),
    //       _buildBox(40, 40, '2'),
    //       _buildBox(40, 40, '1'),
    //       _buildBox(40, 40, '2'),
    //     ],
    //   ),
    // );

    // return Container(
    //   color: Colors.grey,
    //   padding: const EdgeInsets.all(16),
    //   child: Row(
    //     crossAxisAlignment: CrossAxisAlignment.center,
    //     mainAxisAlignment: MainAxisAlignment.spaceAround,
    //     children: [
    //       _buildBox(40, 70, '1'),
    //       _buildBox(40, 90, '2'),
    //       _buildBox(40, 100, '1'),
    //       _buildBox(40, 40, '2'),
    //     ],
    //   ),
    // );

    // return Container(
    //   color: Colors.grey,
    //   padding: const EdgeInsets.all(16),
    //   width: double.infinity,
    //   child: Column(
    //     crossAxisAlignment: CrossAxisAlignment.center,
    //     mainAxisAlignment: MainAxisAlignment.spaceAround,
    //     children: [
    //       _buildBox(200, 50, '1'),
    //       _buildBox(300, 50, '2'),
    //       _buildBox(100, 50, '2'),
    //       _buildBox(200, 50, '1'),
    //       _buildBox(300, 50, '2'),
    //       _buildBox(100, 50, '2'),
    //     ],
    //   ),
    // );
  }

  Widget _buildBox(double width, double height, String text) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(100),
        border: Border.all(color: Colors.brown),
        color: Colors.grey,
        gradient: const LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomLeft,
          colors: [
            Colors.red,
            Colors.green,
            Colors.blue,
          ]
        ),
        boxShadow: const [
          BoxShadow(
            color: Colors.black,
            offset: Offset(10, 10),
            blurRadius: 10,
            spreadRadius: -5
          ),
          BoxShadow(
            color: Colors.blue,
            offset: Offset(-10, -10),
            blurRadius: 10,
            spreadRadius: -5
          ),
          BoxShadow(
            color: Colors.red,
            offset: Offset(-10, 10),
            blurRadius: 10,
            spreadRadius: -5
          ),
          BoxShadow(
            color: Colors.green,
            offset: Offset(10, -10),
            blurRadius: 10,
            spreadRadius: -5
          ),
        ],
      ),
      child: Center(
        child: SizedBox(
          child: Text(
            text,
            style: const TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 28
            ),
          ),
        ),
      ),
    );
  }
}