import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mobile_shop/modul/modul.dart';
import 'package:mobile_shop/order/show_item.dart';

class CardPhone extends StatefulWidget {
  const CardPhone(
      {super.key,
      required this.namePhone,
      required this.price,
      required this.imagePhone,
      required this.colorPhone});
  final String namePhone;
  final int price;
  final String imagePhone;
  final List colorPhone;

  @override
  State<CardPhone> createState() => _CardPhoneState();
}

class _CardPhoneState extends State<CardPhone> {
  bool favoraite = false;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) => ShowItem(
              namePhone: widget.namePhone,
              price: widget.price,
              imagePhone: widget.imagePhone,
              colorPhone: widget.colorPhone,
            ),
          ),
        );
      },
      child: Container(
        height: MediaQuery.of(context).size.height / 100,
        width: MediaQuery.of(context).size.width / 3,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: Colors.white12,
          boxShadow: const [
            BoxShadow(
                color: Colors.black,
                blurRadius: 0.5,
                blurStyle: BlurStyle.inner,
                offset: Offset(1.02, 2.01)),
          ],
        ),
        child: Stack(
          children: [
            Positioned(
              child: Container(
                height: MediaQuery.of(context).size.height / 5.2,
                width: MediaQuery.of(context).size.width,
                margin: EdgeInsets.all(MediaQuery.of(context).size.height / 80),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  image: DecorationImage(
                    image: NetworkImage(
                      widget.imagePhone.toString(),
                    ),
                    fit: BoxFit.fill,
                  ),
                ),
              ),
            ),
            Positioned(
              bottom: MediaQuery.of(context).size.height / 24,
              //right: MediaQuery.of(context).size.width / 8,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.width / 30,
                  ),
                  Text(
                    widget.namePhone,
                    textAlign: TextAlign.start,
                    style: GoogleFonts.cairo(
                      textStyle: TextStyle(
                          color: colorWidget,
                          fontSize: MediaQuery.of(context).size.height / 58,
                          fontWeight: FontWeight.w600),
                    ),
                  ),
                ],
              ),
            ),
            Positioned(
              bottom: MediaQuery.of(context).size.height / 160,
              right: MediaQuery.of(context).size.width / 3.7,
              child: Text(
                "\$ ${widget.price}",
                textAlign: TextAlign.center,
                style: GoogleFonts.cairo(
                  textStyle: TextStyle(
                      color: colorWidget,
                      fontSize: MediaQuery.of(context).size.height / 35,
                      fontWeight: FontWeight.w600),
                ),
              ),
            ),
            Positioned(
              left: MediaQuery.of(context).size.width / 3.12,
              child: IconButton(
                onPressed: () {
                  setState(() {
                    favoraite = !favoraite;
                  });
                },
                icon: Icon(
                  Icons.favorite,
                  color: favoraite ? colorFavorite : colorNotFavorite,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
