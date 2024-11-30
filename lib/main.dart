import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Business Card',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.teal,
          brightness: Brightness.light,
        ),
        useMaterial3: true,
      ),
      home: const BusinessCard(),
    );

  }
}
class BusinessCard extends StatelessWidget {
  const BusinessCard({super.key});

  @override
  Widget build(BuildContext context) {
      final screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.grey[100],
      body: Center(
        child: Card(
          elevation: 4,
          child: Container(
            width: 400,
            padding: const EdgeInsets.all(20),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                // We'll add content here!

                Container(
  width: screenWidth > 600 ? 600 : screenWidth * 0.9,
  height: 120,
  decoration: BoxDecoration(
    shape: BoxShape.circle,
    color: const Color.fromARGB(255, 4, 220, 240),
    image: DecorationImage(
      image: NetworkImage('icons/DANCLOE.jpg'),
      fit: BoxFit.cover,
    ),
  ),
),
const SizedBox(height: 20),
const Text(
  'Dan Chloe Hinampas Danag',
  style: TextStyle(
    fontSize: 24,
    fontWeight: FontWeight.bold,
  ),
),
const Text(
  'Flutter Developer',
  style: TextStyle(
    fontSize: 18,
    color: Colors.grey,
  ),
),
const Divider(height: 32, thickness: 1),
 ListTile(
  leading: Icon(Icons.email, color: const Color.fromARGB(255, 150, 0, 0)),
  title: Text('chloedan78@gmail.com'),
  onTap: _launchEmail,
),
 ListTile(
  leading: Icon(Icons.phone, color: const Color.fromARGB(255, 150, 0, 0)),
  title: Text('+63 960 642 0294'),
  onTap: _launchPhone,
),
const ListTile(
  leading: Icon(Icons.location_on, color: Color.fromARGB(255, 150, 0, 0)),
  title: Text('Davao City, Philippines'),
),
              ],
            ),
          ),
        ),
      ),
    );
  }

  
void _launchEmail() async {
  final Uri emailLaunchUri = Uri(
    scheme: 'mailto',
    path: 'chloedan78@gmail.com',
  );
  if (await canLaunchUrl(emailLaunchUri)) {
    await launchUrl(emailLaunchUri);
  }
}

void _launchPhone() async {
  final Uri phoneLaunchUri = Uri(
    scheme: 'tel',
    path: '+63 960 642 0294',
  );
  if (await canLaunchUrl(phoneLaunchUri)) {
    await launchUrl(phoneLaunchUri);
  }
}


}
