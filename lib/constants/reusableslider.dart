import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:food/constants/reusableboxed.dart';

class reusablesliderdata extends StatelessWidget {
  final dynamic slider_data;
  const reusablesliderdata({Key? key, this.slider_data}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    void _singleproductView(context, productId) {
      Navigator.of(context).pushNamed('singleProduct', arguments: productId);
    }

    return Container(
        width: MediaQuery.of(context).size.width * .55,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Color.fromRGBO(243, 246, 250, 1),
        ),
        child: InkWell(
          onTap: () => _singleproductView(context, slider_data['pid']),
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.only(top: 20.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      slider_data['image'],
                      height: 140,
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 20.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Column(
                      children: [
                        Text(slider_data['pname']),
                        Text(slider_data['type']),
                      ],
                    )
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 30.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text(slider_data['price']),
                    reusableboxed(false, true, () {},
                        FontAwesomeIcons.basketShopping, 60, 60),
                  ],
                ),
              )
            ],
          ),
        ));
  }
}
