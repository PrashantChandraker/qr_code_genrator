import 'package:flutter/material.dart';
import 'package:qr_flutter/qr_flutter.dart';

class GenrateQRCode extends StatefulWidget {
  const GenrateQRCode({super.key});

  @override
  State<GenrateQRCode> createState() => _GenrateQRCodeState();
}

class _GenrateQRCodeState extends State<GenrateQRCode> {
  TextEditingController urlController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          'QR Code Generator',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: const Color.fromARGB(255, 1, 80, 82),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(height: 30,),
            if (urlController.text.isNotEmpty)
              QrImageView(
                data: urlController.text,
                size: 300,
              ),
            const SizedBox(
              height: 30,
            ),
            Container(
              padding: const EdgeInsets.only(left: 20, right: 20),
              child: TextFormField(
                controller: urlController,
                decoration: InputDecoration(
                 border: OutlineInputBorder(
                  borderSide: const BorderSide(color: Colors.grey),
                    borderRadius: BorderRadius.circular(15),
                 ),
                  // hintText: 'Enter Your Data',
                  enabledBorder: OutlineInputBorder(
                    borderSide: const BorderSide(color: Colors.grey),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  labelText: 'Enter Your Data'
                ),
              ),
            ),
            SizedBox(height: 20,),

            ElevatedButton(
              style: ButtonStyle(
                backgroundColor:
                    const MaterialStatePropertyAll(Color.fromARGB(255, 1, 80, 82)),
                shape: MaterialStatePropertyAll(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
              onPressed: () {
                setState(() {
                  
                });
              },
              child: const Text(
                'Generate QR Code',
                style: TextStyle(color: Colors.white, fontSize: 18),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
