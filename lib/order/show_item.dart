import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mobile_shop/modul/modul.dart';
import 'package:mobile_shop/order/completeOrder.dart';

class ShowItem extends StatefulWidget {
  const ShowItem(
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
  State<ShowItem> createState() => _ShowItemState();
}

class _ShowItemState extends State<ShowItem> {
  // ignore: unused_field
  Color _selectColorItem = Colors.black;
  bool favoraiteItem = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: colorWidget,
      ),
      backgroundColor: colorBackground,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Stack(
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    height: MediaQuery.of(context).size.height / 2.5,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.white,
                      image: DecorationImage(
                          image: NetworkImage(widget.imagePhone),
                          fit: BoxFit.contain),
                    ),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height / 50,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        widget.namePhone,
                        style: GoogleFonts.cairo(
                          textStyle: TextStyle(
                              color: colorWidget,
                              fontSize: MediaQuery.of(context).size.height / 30,
                              fontWeight: FontWeight.w600),
                        ),
                      ),
                      Text(
                        "\$${widget.price}",
                        style: GoogleFonts.cairo(
                          textStyle: TextStyle(
                              color: colorWidget,
                              fontSize: MediaQuery.of(context).size.height / 25,
                              fontWeight: FontWeight.w600),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height / 35,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(
                        " : المواصفات",
                        style: GoogleFonts.cairo(
                          textStyle: TextStyle(
                              color: Colors.white,
                              fontSize: MediaQuery.of(context).size.height / 55,
                              fontWeight: FontWeight.w600),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height / 9,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(
                        " الألوان المتوفرة",
                        style: GoogleFonts.cairo(
                          textStyle: TextStyle(
                              color: Colors.white,
                              fontSize: MediaQuery.of(context).size.height / 40,
                              fontWeight: FontWeight.w600),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height / 10,
                    child: GridView.builder(
                      scrollDirection: Axis.horizontal,
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 1,
                          mainAxisSpacing: 10,
                          crossAxisSpacing: 2,
                          mainAxisExtent:
                              MediaQuery.of(context).size.width / 7),
                      itemCount: widget.colorPhone.length,
                      itemBuilder: (context, index) => IconButton(
                        onPressed: () {
                          setState(() {
                            _selectColorItem = widget.colorPhone[index];
                          });
                        },
                        icon: Icon(
                          Icons.circle,
                          color: widget.colorPhone[index],
                          size: MediaQuery.of(context).size.height / 15,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height / 80,
                  ),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        orderItems.add([
                          widget.namePhone,
                          widget.price,
                          widget.imagePhone,
                          _selectColorItem
                        ]);
                      });
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => OrderPage(
                            namePhone: widget.namePhone,
                            imagePhone: widget.imagePhone,
                            price: widget.price,
                            colorItem: _selectColorItem,
                          ),
                        ),
                      );
                    },
                    child: Container(
                      height: MediaQuery.of(context).size.height / 15,
                      width: MediaQuery.of(context).size.width / 1.2,
                      decoration: BoxDecoration(
                          color: colorWidget,
                          borderRadius: BorderRadius.circular(20)),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Icon(
                            Icons.shopping_cart,
                            size: MediaQuery.of(context).size.height / 30,
                          ),
                          Text(
                            "أَضف إلى السلة",
                            style: GoogleFonts.cairo(
                              textStyle: TextStyle(
                                  fontSize:
                                      MediaQuery.of(context).size.height / 40,
                                  fontWeight: FontWeight.w600),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              Positioned(
                right: 1,
                child: IconButton(
                  onPressed: () {
                    setState(() {
                      favoraiteItem = !favoraiteItem;
                    });
                  },
                  icon: Icon(
                    Icons.favorite,
                    color: favoraiteItem ? colorFavorite : colorNotFavorite,
                    size: MediaQuery.of(context).size.height / 20,
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
