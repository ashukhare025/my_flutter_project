import 'package:flutter/material.dart';
import 'package:my_project/tikawoo/sidemenu_screens/add_bank_details.dart';

class BankDetails extends StatelessWidget {
  const BankDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leadingWidth: 40,
        leading: GestureDetector(
          onTap: () => Navigator.pop(context),
          child: CircleAvatar(
            backgroundColor: const Color(0XFFF09308),
            child: const Icon(Icons.arrow_back, color: Colors.white, size: 20),
          ),
        ),
        centerTitle: true,
        title: const Text(
          'Banks Details',
          style: TextStyle(fontSize: 17, fontWeight: FontWeight.w600),
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(0),
          width: double.infinity,
          child: Column(
            children: [
              Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16),
                ),
                color: Color(0XFFFFE1B3),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Text(
                                'Bank A/C No.',
                                style: TextStyle(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 14,
                                  fontFamily: "PopMain",
                                ),
                              ),
                              SizedBox(width: 170),
                              Image.asset(
                                'assets/tikawoo/image 16.png',
                                width: 45,
                                height: 40,
                              ),
                            ],
                          ),
                          SizedBox(height: 5),
                          Text(
                            '3435645755668677878',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                              fontFamily: 'Pop',
                            ),
                          ),
                          SizedBox(height: 20),
                          Row(
                            children: [
                              Text(
                                'Account Holder Name',
                                style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400,
                                  fontFamily: 'PopMain',
                                ),
                              ),
                              SizedBox(width: 90),
                              Text(
                                'IFSC CODE',
                                style: TextStyle(
                                  fontFamily: 'PopMain',
                                  fontWeight: FontWeight.w400,
                                  fontSize: 14,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 10),
                          Row(
                            children: [
                              Text(
                                'Ankit Gajera',
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w600,
                                  fontFamily: 'Pop',
                                ),
                              ),
                              SizedBox(width: 145),
                              Text(
                                'SBI00546',
                                style: TextStyle(
                                  fontFamily: 'Pop',
                                  fontWeight: FontWeight.w600,
                                  fontSize: 16,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 20),
                          Text(
                            'UPI ID',
                            style: TextStyle(
                              fontFamily: 'PopMain',
                              fontWeight: FontWeight.w400,
                              fontSize: 14,
                            ),
                          ),
                          Row(
                            children: [
                              Text(
                                'ankit@okicici',
                                style: TextStyle(
                                  fontWeight: FontWeight.w600,
                                  fontFamily: 'Pop',
                                  fontSize: 16,
                                ),
                              ),
                              SizedBox(width: 60),
                              ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: Color(0XFFF09308),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(7),
                                  ),
                                ),
                                onPressed: () {},
                                child: Text(
                                  'Update Details',
                                  style: TextStyle(
                                    fontWeight: FontWeight.w400,
                                    fontFamily: 'PopMain',
                                    fontSize: 15,
                                    color: Color(0xFFFFFFFF),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'kyc Documents',
                    style: TextStyle(
                      fontSize: 16,
                      fontFamily: 'PopMed',
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  Text(
                    'Update Documents',
                    style: TextStyle(
                      fontSize: 16,
                      fontFamily: 'PopMain',
                      fontWeight: FontWeight.w400,
                      color: Color(0XFFF09308),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.only(left: 18, right: 18),
                child: TextField(
                  decoration: InputDecoration(
                    suffixText: 'varified',
                    prefixIcon: Icon(
                      Icons.check_circle_outline,
                      color: Color(0XFF00BE13),
                    ),
                    hintText: 'Pancard.PDF',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                    filled: true,
                    fillColor: Color(0xFFFFFFFF),
                  ),
                ),
              ),
              SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.only(left: 18, right: 18),
                child: TextField(
                  decoration: InputDecoration(
                    suffixText: 'Reviewing',
                    prefixIcon: Icon(
                      Icons.check_circle_outline,
                      color: Color(0XFFF09308),
                    ),
                    hintText: 'SBI-Cheque.JPG',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                    filled: true,
                    fillColor: Color(0xFFFFFFFF),
                  ),
                ),
              ),
              SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.only(left: 18, right: 18),
                child: TextField(
                  decoration: InputDecoration(
                    suffixText: 'Rejected',
                    suffixStyle: TextStyle(
                      fontFamily: 'PopMain',
                      fontWeight: FontWeight.w400,
                      fontSize: 12,
                      color: Color(0xFF00BE13),
                    ),
                    suffixIcon: Icon(
                      Icons.cloud_upload_outlined,
                      color: Color(0xFFF09308),
                    ),
                    prefixIcon: Icon(Icons.error, color: Color(0XFFFE2121)),
                    hintText: 'Driving Licence',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                    filled: true,
                    fillColor: Color(0xFFFFFFFF),
                  ),
                ),
              ),
              SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.only(left: 18, right: 18),
                child: TextField(
                  decoration: InputDecoration(
                    suffixIcon: Icon(
                      Icons.cloud_upload_outlined,
                      color: Color(0xFFF09308),
                    ),
                    prefixIcon: Icon(
                      Icons.access_time_filled,
                      color: Color(0XFFFE2121),
                    ),
                    hintText: 'Adhaar Card',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                    filled: true,
                    fillColor: Color(0xFFFFFFFF),
                  ),
                ),
              ),
              SizedBox(height: 30),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  padding: EdgeInsets.symmetric(horizontal: 100, vertical: 15),
                  backgroundColor: Colors.orange,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => AddBank()),
                  );
                },
                child: Text(
                  'Add New Banks',
                  style: TextStyle(
                    fontFamily: 'Pop',
                    fontWeight: FontWeight.w600,
                    fontSize: 16,
                    color: Color(0xFFFFFFFF),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
