import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:journal_app/models.dart';
class JournalEntryPage extends StatelessWidget {
  final JournalEntry entry;
  const JournalEntryPage({super.key, required this.entry});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(entry.title),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Text(
                  DateFormat('yyyy-MM-dd').format(entry.date),
                  style: TextStyle(fontSize: 16, color: Colors.grey),
                ),
                SizedBox(width: 30,),
                if (entry.mood != null) Text(entry.mood!, style: TextStyle(fontSize: 25),)],
            ),
            SizedBox(height: 16),
            Text(
              entry.content,
              style: TextStyle(fontSize: 18),
            ),
            SizedBox(height: 16,),
            if (entry.mediaUrl != null)
              Center(
                child: Image.network(
                  entry.mediaUrl!,
                  width: 200,
                  height: 200,
                  fit: BoxFit.cover,

                )
              )
          ],
        ),
      ),
    );
  }
}

