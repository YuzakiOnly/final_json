import 'package:flutter/material.dart';
import 'model/sample.dart';

class DetailPage extends StatelessWidget {
  final Profile profile;

  const DetailPage({super.key, required this.profile});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(profile.name),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(12),
              child: Image.network(
                profile.photoUrl,
                height: 200,
                width: double.infinity,
                fit: BoxFit.cover,
                errorBuilder: (context, error, stackTrace) {
                  return const Text('Gambar gagal dimuat');
                },
              ),
            ),
            const SizedBox(height: 16),
            Text("Nama: ${profile.name}",
                style:
                    const TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
            const SizedBox(height: 8),
            Text("Posisi: ${profile.position}"),
            const SizedBox(height: 8),
            Text("Email: ${profile.email}"),
            const SizedBox(height: 8),
            Text("Department: ${profile.department}"),
            const SizedBox(height: 8),
            Text("Salary: Rp${profile.salary}"),
          ],
        ),
      ),
    );
  }
}
