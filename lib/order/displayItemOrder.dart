import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mobile_shop/modul/modul.dart';

class DisplayOrder extends StatefulWidget {
  const DisplayOrder(
      {super.key,
      required this.namePhone,
      required this.price,
      required this.imagePhone,
      required this.colorItem,
      this.onPressAdd,
      this.onPressSub});

  final String namePhone;
  final int price;
  final String imagePhone;
  final Color colorItem;
  final onPressAdd;
  final onPressSub;
  @override
  State<DisplayOrder> createState() => _DisplayOrderState();
}

class _DisplayOrderState extends State<DisplayOrder> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height / 5,
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
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            margin: const EdgeInsets.all(15),
            height: MediaQuery.of(context).size.height / 4,
            width: MediaQuery.of(context).size.width / 3,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
              image: DecorationImage(
                  image: NetworkImage(widget.imagePhone), fit: BoxFit.contain),
            ),
          ),
          const Spacer(),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height / 60,
              ),
              Text(
                widget.namePhone,
                style: GoogleFonts.cairo(
                  textStyle: TextStyle(
                      color: Colors.white,
                      fontSize: MediaQuery.of(context).size.height / 50,
                      fontWeight: FontWeight.w600),
                ),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.height / 100,
              ),
              Text(
                "${widget.price} \$",
                style: GoogleFonts.cairo(
                  textStyle: TextStyle(
                      color: colorWidget,
                      fontSize: MediaQuery.of(context).size.height / 30,
                      fontWeight: FontWeight.w600),
                ),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.height / 100,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Icon(
                    Icons.circle,
                    color: widget.colorItem,
                    //  size: MediaQuery.of(context).size.width / 10,
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  Text(
                    " : اللون",
                    style: GoogleFonts.cairo(
                      textStyle: TextStyle(
                          color: Colors.white,
                          fontSize: MediaQuery.of(context).size.height / 40,
                          fontWeight: FontWeight.w600),
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  IconButton(
                    onPressed: widget.onPressSub,
                    icon: const Icon(
                      Icons.remove,
                      size: 20,
                      color: Colors.white,
                    ),
                  ),
                  Container(
                    height: MediaQuery.of(context).size.height / 25,
                    width: MediaQuery.of(context).size.width / 10,
                    decoration: BoxDecoration(
                      color: Colors.white12,
                      boxShadow: const [
                        BoxShadow(
                            color: Colors.black,
                            blurRadius: 0.5,
                            blurStyle: BlurStyle.inner,
                            offset: Offset(1.02, 2.01)),
                      ],
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Center(
                      child: Text(
                        "$number_Item",
                        style: const TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                  IconButton(
                    onPressed: widget.onPressAdd,
                    icon: const Icon(
                      Icons.add,
                      size: 20,
                      color: Colors.white,
                    ),
                  ),
                  Text(
                    " : العدد",
                    style: GoogleFonts.cairo(
                      textStyle: TextStyle(
                          color: Colors.white,
                          fontSize: MediaQuery.of(context).size.height / 50,
                          fontWeight: FontWeight.w600),
                    ),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.width / 40,
                  ),
                ],
              ),
            ],
          ),
          SizedBox(
            width: MediaQuery.of(context).size.width / 50,
          )
        ],
      ),
    );
  }
}
