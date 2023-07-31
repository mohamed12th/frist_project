import 'package:flutter/material.dart';
import 'package:trannin_poject/screens/my_cart/components/item_cart.dart';
import 'package:trannin_poject/screens/my_cart/components/item_free.dart';
import 'package:trannin_poject/screens/my_cart/components/item_price.dart';

import 'package:trannin_poject/shared/my_app_bar.dart';

class MyCartScreen extends StatelessWidget {
  const MyCartScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(title: "My Cart",isFilterShown: false,),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Column(
              children: List.generate(3, (index) => ItemCart()),
            ),
            SizedBox(height: 30,),
            Padding(
              padding:EdgeInsetsDirectional.only(start: 18,bottom: 15),
              child: Text("Free Items",style: TextStyle(fontSize: 20,color: Color(0xff516E00)),),
            ),

            Column(
              children: List.generate(2, (index) => ItemFree()),
            ),
            SizedBox(height: 40,),
            Column(
              children: [
                ItemPrice(title:"Subtotal", price: "0.00" , isBold: false,),

                ItemPrice(title:"Shipping Fees", price: "0.00" , isBold: false,),
                ItemPrice(title:"VAT", price: "0.00" , isBold: false,),

                Divider(color: Color(0xff707070),),
                  ItemPrice(title:"Total Fees", price: "0.00" , isBold: true,),
                SizedBox(height: 20,),
                ElevatedButton(onPressed: (){}, child: Text("Continue"), style: ElevatedButton.styleFrom(
                  primary: Colors.black,
                  fixedSize: Size(264, 44)
                ),),
                SizedBox(height: 100,)


              ],
            ),

          ],
        ),
      ),

    );
  }
}
