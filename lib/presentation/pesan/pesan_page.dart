import 'package:flutter/material.dart';
import 'package:sampahku/presentation/pesan/detail_pesan_page.dart';

class PesanPage extends StatelessWidget {
  const PesanPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Pesan',
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
        elevation: 20,
        centerTitle: true,
      ),
      body: ListView.builder(
        itemCount: 3,
        padding: const EdgeInsets.symmetric(
          vertical: 8.0,
          horizontal: 16.0,
        ),
        itemBuilder: (context, index) {
          return Card(
            color: Colors.white,
            child: ListTile(
              leading: CircleAvatar(
                backgroundColor: Colors.grey[300],
                maxRadius: 30,
                child: Text('M${index + 1}'),
              ),
              trailing: CircleAvatar(
                backgroundColor: Colors.teal,
                maxRadius: 12,
                child: Text(
                  '${index * 2 + 1}',
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 12,
                  ),
                ),
              ),
              title: Text(
                'Mobil${index + 1}',
                style: const TextStyle(
                  fontWeight: FontWeight.w500,
                ),
              ),
              subtitle: const Text(
                'Sampah akan segera diambil petugas',
                overflow: TextOverflow.ellipsis,
              ),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => DetailPesanPage(
                        name: 'Mobil${index + 1}',
                      ),
                    ));
              },
            ),
          );
        },
      ),
    );
  }
}
