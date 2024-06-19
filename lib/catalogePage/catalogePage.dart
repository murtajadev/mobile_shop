import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mobile_shop/catalogePage/designCardPhone.dart';
import 'package:mobile_shop/modul/modul.dart';

class CatalogePage extends StatefulWidget {
  const CatalogePage({super.key, this.phoneShow, this.nameCompany});
  final phoneShow;
  final nameCompany;

  @override
  State<CatalogePage> createState() => _CatalogePageState();
}

class _CatalogePageState extends State<CatalogePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: colorWidget,
        automaticallyImplyLeading: false,
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          icon: const Icon(Icons.arrow_back_ios_new_outlined),
        ),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              width: MediaQuery.of(context).size.width / 4.8,
            ),
            Center(
              child: Text(
                widget.nameCompany,
                style: GoogleFonts.cairo(
                  textStyle: TextStyle(
                      fontSize: MediaQuery.of(context).size.height / 30,
                      fontWeight: FontWeight.w500),
                ),
              ),
            )
          ],
        ),
      ),
      backgroundColor: colorBackground,
      body: Padding(
        padding: const EdgeInsets.all(15),
        child: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              mainAxisSpacing: 10,
              crossAxisSpacing: 10,
              childAspectRatio: 0.77),
          itemCount: widget.phoneShow.length,
          itemBuilder: (context, index) {
            return CardPhone(
              namePhone: widget.phoneShow[index][0],
              price: widget.phoneShow[index][1],
              imagePhone: widget.phoneShow[index][2],
              colorPhone: widget.phoneShow[index][3],
            );
          },
        ),
      ),
    );
  }
}
