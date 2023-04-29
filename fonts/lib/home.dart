import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Fonts"),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("The quick brown fox jumps over the lazy dog with 42", style: k32semiBold),
            SizedBox(height: 25),
            Text("The quick brown fox jumps over the lazy dog", style: k24semiBold),
            SizedBox(height: 25),
            Text("The quick brown fox jumps over the lazy dog", style: k24medium),
            SizedBox(height: 25),
            Text("The quick brown fox jumps over the lazy dog", style: k18medium),
            SizedBox(height: 25),
            Text("The quick brown fox jumps over the lazy dog", style: k16medium),
            SizedBox(height: 25),
            Text("The quick brown fox jumps over the lazy dog", style: k16regular),
            SizedBox(height: 25),
            Text("The quick brown fox jumps over the lazy dog", style: k13semiBold),
            SizedBox(height: 25),
            Text("The quick brown fox jumps over the lazy dog", style: k13medium),
            SizedBox(height: 25),
            Text("The quick brown fox jumps over the lazy dog", style: k13regular),
            SizedBox(height: 25),
            Text("The quick brown fox jumps over the lazy dog", style: k11medium),
            SizedBox(height: 25),
            Text("The quick brown fox jumps over the lazy dog", style: k11regular),
          ],
        ),
      ),
    );
  }
}

// final k32semiBold = TextStyle(fontSize: 32, fontWeight: FontWeight.w600);
// final k24semiBold = TextStyle(fontSize: 24, fontWeight: FontWeight.w600);
// final k24medium = TextStyle(fontSize: 24, fontWeight: FontWeight.w500);
// final k18medium = TextStyle(fontSize: 18, fontWeight: FontWeight.w500);
// final k16medium = TextStyle(fontSize: 16, fontWeight: FontWeight.w500);
// final k16regular = TextStyle(fontSize: 16);
// final k13semiBold = TextStyle(fontSize: 13, fontWeight: FontWeight.w600);
// final k13medium = TextStyle(fontSize: 13, fontWeight: FontWeight.w500);
// final k13regular = TextStyle(fontSize: 13);
// final k11medium = TextStyle(fontSize: 11, fontWeight: FontWeight.w500);
// final k11regular = TextStyle(fontSize: 11);
final k32semiBold = TextStyle(fontSize: 32, fontWeight: FontWeight.w600);
final k24semiBold = TextStyle(fontSize: 20.sp, fontWeight: FontWeight.w600);
final k24medium = TextStyle(fontSize: 20.sp, fontWeight: FontWeight.w500);
final k18medium = TextStyle(fontSize: 18.sp, fontWeight: FontWeight.w500);
final k16medium = TextStyle(fontSize: 16.sp, fontWeight: FontWeight.w500);
final k16regular = TextStyle(fontSize: 16.sp);
final k13semiBold = TextStyle(fontSize: 14.sp, fontWeight: FontWeight.w600);
final k13medium = TextStyle(fontSize: 14.sp, fontWeight: FontWeight.w500);
final k13regular = TextStyle(fontSize: 13.sp);
final k11medium = TextStyle(fontSize: 8.sp, fontWeight: FontWeight.w500);
final k11regular = TextStyle(fontSize: 11);
