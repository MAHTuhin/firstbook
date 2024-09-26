import 'package:flutter/material.dart';

class Paymentlist extends StatefulWidget {
  const Paymentlist({super.key});

  @override
  State<Paymentlist> createState() => _PaymentlistState();
}

class _PaymentlistState extends State<Paymentlist> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            height: 80,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
              color: Colors.black12,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    width: 70,
                    decoration: BoxDecoration(
                      image: const DecorationImage(
                          image: NetworkImage(
                            'https://freelogopng.com/images/all_img/1656234782bkash-app-logo.png'
                          ),
                          fit: BoxFit.fill),
                      borderRadius: BorderRadius.circular(5),
                    ),
                  ),
                ),
                const Text('Add Bkash Account',style: TextStyle(fontSize: 22,fontWeight: FontWeight.bold),),
                IconButton(
                  onPressed: (){
                    showAlertDialog(context);
                  },
                  icon: const Icon(
                    Icons.navigate_next,
                    size: 44,
                  ),
                ),
              ],
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            height: 80,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
              color: Colors.black12,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    width: 70,
                    decoration: BoxDecoration(
                      image: const DecorationImage(
                          image: NetworkImage(
                            'https://th.bing.com/th/id/R.fae307bb595a2f9f344efe73c47a25e8?rik=4kfTRLn%2bElc3%2bQ&pid=ImgRaw&r=0'
                          ),
                          fit: BoxFit.fill),
                      borderRadius: BorderRadius.circular(5),
                    ),
                  ),
                ),
                const Text('Add Nagad Account',style: TextStyle(fontSize: 22,fontWeight: FontWeight.bold),),
                IconButton(
                  onPressed: (){
                    showAlertDialog(context);
                  },
                  icon: const Icon(
                    Icons.navigate_next,
                    size: 44,
                  ),
                ),
              ],
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            height: 80,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
              color: Colors.black12,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    width: 70,
                    decoration: BoxDecoration(
                      image: const DecorationImage(
                          image: NetworkImage(
                            'https://th.bing.com/th/id/R.76d59e053381cbb356cfb2d49be1f51f?rik=VP25CFxfuxl6Dg&pid=ImgRaw&r=0'
                          ),
                          fit: BoxFit.fill),
                      borderRadius: BorderRadius.circular(5),
                    ),
                  ),
                ),
                const Text('Add Rocket Account',style: TextStyle(fontSize: 22,fontWeight: FontWeight.bold),),
                IconButton(
                  onPressed: (){
                    showAlertDialog(context);
                  },
                  icon: const Icon(
                    Icons.navigate_next,
                    size: 44,
                  ),
                ),
              ],
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            height: 80,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
              color: Colors.black12,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    width: 70,
                    decoration: BoxDecoration(
                      image: const DecorationImage(
                          image: NetworkImage(
                            'https://th.bing.com/th/id/OIP.RUKFtES3pjLFvpymtt6G9gHaHa?rs=1&pid=ImgDetMain'
                          ),
                          fit: BoxFit.fill),
                      borderRadius: BorderRadius.circular(5),
                    ),
                  ),
                ),
                const Text('Cash on Delivary',style: TextStyle(fontSize: 22,fontWeight: FontWeight.bold),),
                IconButton(
                  onPressed: (){
                    showAlertDialog(context);
                  },
                  icon: const Icon(
                    Icons.navigate_next,
                    size: 44,
                  ),
                ),
              ],
            ),
          ),
        )

      ],
    );
  }

}
showAlertDialog(BuildContext context) {
  // set up the button
  Widget okButton = TextButton(
    child: const Text('Thank You',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
    onPressed: () => Navigator.pop(context, 'OK'),
  );
  // set up the AlertDialog
  AlertDialog alert = AlertDialog(
    title: const Text('Contact Now',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
    content: const Text('01627-109766',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
    actions: [
      okButton,
    ],
  );
  // show the dialog
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return alert;
    },
  );
}
