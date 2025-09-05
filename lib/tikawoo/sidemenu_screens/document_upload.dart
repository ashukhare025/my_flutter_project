import 'package:flutter/material.dart';
import 'package:my_project/constants/textfont.dart';

class BankDetails2 extends StatefulWidget {
  const BankDetails2({super.key});

  @override
  State<BankDetails2> createState() => _BankDetails2State();
}

class _BankDetails2State extends State<BankDetails2> {
  void _showAddBank(BuildContext context) async {
    showModalBottomSheet(
      context: context,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(
          top: Radius.circular(20),
          bottom: Radius.circular(20),
        ),
      ),
      builder: (context) => SizedBox(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset('assets/tikawoo/sucess.png', height: 150, width: 150),
              Text('New Bank Added', style: TextSemiBold),
              SizedBox(height: 15),
              Text(
                "New Bank Details Successfully registered",
                style: TextRegular,
              ),
              SizedBox(height: 15),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  padding: EdgeInsets.symmetric(horizontal: 50, vertical: 8),
                  backgroundColor: Colors.orange,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => BankDetails2()),
                  );
                },
                child: Text('Back to Home', style: TextSemiBold),
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leadingWidth: 40,
        leading: GestureDetector(
          onTap: () => Navigator.pop(context),
          child: CircleAvatar(
            backgroundColor:  Color(0XFFF09308),
            child:  Icon(Icons.arrow_back, color: Colors.white, size: 20),
          ),
        ),
        centerTitle: true,
        title:  Text(
          'Document Upload',
          style: TextStyle(fontSize: 17, fontWeight: FontWeight.w600),
        ),
      ),

      body: Container(
        height: double.infinity,
        width: double.infinity,
        color: Color(0XFFF5F6F7),
        child: Column(
          children: [
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(width: 15),
                Container(
                  height: 7,
                  width: 160,
                  decoration: BoxDecoration(
                    color: Color(0XFFF09308),
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
                Container(
                  height: 7,
                  width: 160,
                  decoration: BoxDecoration(
                    color: Color(0XFFF09308),
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
              ],
            ),
            SizedBox(height: 30),
            Column(
              children: [
                Padding(
                  padding:  EdgeInsets.only(left: 20, right: 20),
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: 'Pancard.PDF',
                      suffixIcon: Icon(
                        Icons.cloud_upload_outlined,
                        color: Color(0xffF09308),
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                      filled: true,
                      fillColor: Color(0xFFFFFFFF),
                    ),
                  ),
                ),
                SizedBox(height: 15),
                Padding(
                  padding:  EdgeInsets.only(left: 20, right: 20),
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: 'Bank Cheque',
                      suffixIcon: Icon(
                        Icons.cloud_upload_outlined,
                        color: Color(0xffF09308),
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                      filled: true,
                      fillColor: Color(0xFFFFFFFF),
                    ),
                  ),
                ),
                SizedBox(height: 15),
                Padding(
                  padding:  EdgeInsets.only(left: 20, right: 20),
                  child: TextField(
                    keyboardType: TextInputType.emailAddress,

                    decoration: InputDecoration(
                      hintText: 'Adhaar Card',
                      suffixIcon: Icon(
                        Icons.cloud_upload_outlined,
                        color: Color(0xffF09308),
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                      filled: true,
                      fillColor: Color(0xFFFFFFFF),
                    ),
                  ),
                ),
                SizedBox(height: 15),
                Padding(
                  padding:  EdgeInsets.only(left: 20, right: 20),
                  child: TextField(
                    keyboardType: TextInputType.phone,
                    decoration: InputDecoration(
                      hintText: 'Driving Licence (Optional)',
                      suffixIcon: Icon(
                        Icons.cloud_upload_outlined,
                        color: Color(0xffF09308),
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                      filled: true,
                      fillColor: Color(0xFFFFFFFF),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
      floatingActionButton: ElevatedButton(
        style: ElevatedButton.styleFrom(
          padding: EdgeInsets.symmetric(horizontal: 150, vertical: 15),
          backgroundColor: Colors.orange,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
        ),
        onPressed: () {
          _showAddBank(context);
        },
        child: Text(
          'Submit',
          style: TextStyle(fontSize: 12, color: Color(0xFFFFFFFF)),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
