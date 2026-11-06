import 'package:flutter/material.dart';
import 'package:rifah_076_64b/container_page.dart';
import 'package:rifah_076_64b/image_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 255, 245, 249),

      appBar: AppBar(
        title: const Text("Home"),
        backgroundColor: const Color.fromARGB(255, 162, 76, 118),
        foregroundColor: Colors.white,
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.person)),
          IconButton(onPressed: () {}, icon: const Icon(Icons.logout)),
        ],
      ),

      // Drawer
      drawer: Drawer(
        backgroundColor: const Color.fromARGB(255, 255, 245, 249),
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            UserAccountsDrawerHeader(
              accountName: const Text("Rifah Tashfia"),
              accountEmail: const Text("rifahtashfia0016@email.com"),
              decoration: const BoxDecoration(
                color: Color.fromARGB(255, 207, 111, 146),
              ),
            ),

            ListTile(
              leading: const Icon(Icons.home),
              hoverColor: const Color.fromARGB(255, 250, 225, 236),
              iconColor: const Color.fromARGB(255, 162, 76, 118),
              title: const Text("Home"),
              onTap: () {},
            ),

            const Divider(),

            ListTile(
              leading: const Icon(Icons.person),
              hoverColor: const Color.fromARGB(255, 250, 225, 236),
              iconColor: const Color.fromARGB(255, 162, 76, 118),
              title: const Text("Profile"),
              onTap: () {},
            ),

            const Divider(),

            ListTile(
              leading: const Icon(Icons.settings),
              hoverColor: const Color.fromARGB(255, 250, 225, 236),
              iconColor: const Color.fromARGB(255, 162, 76, 118),
              title: const Text("Settings"),
              onTap: () {},
            ),

            const Divider(),

            ListTile(
              leading: const Icon(Icons.notifications),
              hoverColor: const Color.fromARGB(255, 250, 225, 236),
              iconColor: const Color.fromARGB(255, 162, 76, 118),
              title: const Text("Notifications"),
              onTap: () {},
            ),

            const Divider(),

            ListTile(
              leading: const Icon(Icons.info),
              hoverColor: const Color.fromARGB(255, 250, 225, 236),
              iconColor: const Color.fromARGB(255, 162, 76, 118),
              title: const Text("About"),
              onTap: () {},
            ),

            const Divider(),

            ListTile(
              leading: const Icon(Icons.help),
              hoverColor: const Color.fromARGB(255, 250, 225, 236),
              iconColor: const Color.fromARGB(255, 162, 76, 118),
              title: const Text("Help & Support"),
              onTap: () {},
            ),

            const Divider(),

            ListTile(
              leading: const Icon(Icons.logout),
              hoverColor: const Color.fromARGB(255, 250, 225, 236),
              iconColor: const Color.fromARGB(255, 162, 76, 118),
              title: const Text("Logout"),
              onTap: () {},
            ),
          ],
        ),
      ),

      // Floating Action Button
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: const Color.fromARGB(255, 162, 76, 118),
        foregroundColor: Colors.white,
        hoverColor: const Color.fromARGB(255, 207, 111, 146),
        tooltip: "Write",
        shape: const CircleBorder(),
        child: const Icon(Icons.add),
      ),

      // Body
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            TextButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ContainerPage()),
                );
              },
              style: TextButton.styleFrom(
                foregroundColor: Colors.white,
                backgroundColor: const Color.fromARGB(255, 162, 76, 118),
                fixedSize: const Size(150, 50),
              ),
              child: const Text("Container page"),
            ),

            ElevatedButton(
              onPressed: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => ImagePage()),
                );
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color.fromARGB(255, 207, 111, 146),
                foregroundColor: Colors.white,
                fixedSize: const Size(150, 50),
              ),
              child: const Text("Image Page"),
            ),

            OutlinedButton(
              onPressed: () {
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text("Pink Button Clicked !!")),
                );
              },
              style: OutlinedButton.styleFrom(
                foregroundColor: const Color.fromARGB(255, 162, 76, 118),
                backgroundColor: const Color.fromARGB(255, 250, 225, 236),
                side: const BorderSide(
                  color: Color.fromARGB(255, 162, 76, 118),
                  width: 2,
                ),
                fixedSize: const Size(150, 50),
              ),
              child: const Text("Page"),
            ),
          ],
        ),
      ),
    );
  }
}
