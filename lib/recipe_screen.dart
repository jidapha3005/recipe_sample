import 'package:flutter/material.dart';

class RecipeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('จิดาภา 1103'),
        backgroundColor: const Color.fromARGB(255, 247, 229, 203),
      ),
      body: Center(
        child: Column(
          children: [
            Image.network(
              'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRFgQ8mm2_Jczvp6SRjFksqRXSRCL5gSPvbaA&s', 
              height: 250,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children:[
                  Text(
                    'ข้าวขาหมู',
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      
                    ),
                  ),
                  SizedBox(height: 8),
                  Text('ข้าวขาหมูเป็นเมนูอาหารจานเดียวที่ได้รับความนิยมในประเทศไทย ประกอบด้วยขาหมูตุ๋นที่มีรสชาติกลมกล่อม หอมสมุนไพร และมีความนุ่มละลายในปาก เสิร์ฟพร้อมข้าวสวยร้อน ๆ น้ำราดขาหมูที่มีรสชาติหวานเค็มกำลังดี และเครื่องเคียง เช่น ผักดอง กระเทียม พริกสด และไข่ต้ม',
                    style: TextStyle(fontSize: 20),
                  ),
                  SizedBox(height: 16),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Row(
                        children: List.generate(5, (index) {
                          return Icon(Icons.star, color: const Color.fromARGB(255, 12, 12, 11), size: 28);
                        }),
                      ),
                      SizedBox(width: 8),
                      Text(
                        '200 Reviews',
                        style: TextStyle(fontSize: 16,),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  _buildInfoColumn(Icons.kitchen, 'PREP: 25 min'),
                  _buildInfoColumn(Icons.timer, 'Cook: 1 hr'),
                  _buildInfoColumn(Icons.restaurant, 'FEEDS: 4-6'),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
  Column _buildInfoColumn(IconData icon, String label) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Icon(icon, size: 30, color: const Color.fromARGB(201, 98, 240, 4)),
        SizedBox(height: 8),
        Text(
          label,
          style: TextStyle(fontSize: 14),
        ),
      ],
    );
  }
}
