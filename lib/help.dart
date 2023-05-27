import 'package:flutter/material.dart';

class help extends StatelessWidget {
  const help({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.deepOrange[300],
          title: Text('Help',
              style: TextStyle(fontSize: 25, color: Colors.white)),
        ),
        body:SingleChildScrollView(
            child:Padding(
              padding: const EdgeInsets.only(left:15 ,right: 15),
              child: Text("""
              
                   UNDERSTANDING SHOPAHOLIC:
                   
  What about quality of products?

  Shopaholic has over the years-built product and supplier quality guardrails with its trusted supplier base. Continuing with the same commitment, you can now place orders on behalf of the customers confidently with quality selection available on Shopaholic.
  You will also get access to millions of customer reviews shared on Shopaholic. Customer reviews on Shopaholic will help you get additional information about quality and performance.
  
  Do you provide product reviews?
  
  Yes, on Shopaholic you get access to millions of customer reviews shared on Shopaholic. Customer reviews on Shopaholic will help you get additional information about quality and performance of products.
  
  How do I place an order using Cash on Delivery (COD)?
  
  Here's how you can place an order using Cash on Delivery (COD):
  • Add a product to your cart.
  • Go to the Cart section.
  Enter the Customer's address and select 'Deliver Here'.
  On the next page, you will see a list of payment options.
  Select 'Cash on Delivery' as the payment mode.
  • Confirm Order Details and place the order.
  The delivery partner will collect the amount from the customer at the time of delivery.
  
  Note: In case the delivery partner has collected an extra amount than the order value OR the order is marked delivered but the customer did not receive it, please give us a call at 0945-87415578 or drop an email to support@ Shopaholic.in within 48 hours of order delivery.
  
  Can I order a single unit? Is there a minimum order quantity on Shopaholic?
  
  Yes, every product available on Shopaholic is available for ordering a 'single' quantity. On Shopaholic, there is no minimum order quantity for any of the available products.

              """,style: TextStyle(color: Colors.black,fontSize: 17,),),
            )
        )
    );
  }
}
