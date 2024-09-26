import 'package:firstbook/payment.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class Ditails extends StatefulWidget {
  const Ditails({super.key});

  @override
  State<Ditails> createState() => _DitailsState();
}

class _DitailsState extends State<Ditails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.arrow_back_ios_rounded,
            color: Colors.black,
          ),
          style: IconButton.styleFrom(
            backgroundColor: Colors.white,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.favorite_border,
              color: Colors.black,
            ),
            style: IconButton.styleFrom(
              backgroundColor: Colors.white,
            ),
          ),
        ],
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Container(
            height: 300.0,
            decoration: const BoxDecoration(
              image: DecorationImage(
                  image: NetworkImage(
                    'https://images.pexels.com/photos/1560093/pexels-photo-1560093.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2'
                  ),
                  fit: BoxFit.fill),
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(25),
                bottomRight: Radius.circular(25),
              ),
            ),
          ),
          const SizedBox(height: 16),
          Container(
            height: 490,
            child: Padding(
              padding: const EdgeInsets.only(left: 16, right: 8, top: 2),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  const Text(
                    'IN TUNE WITH THE INFINITE',
                    style: TextStyle(
                      fontSize: 26,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Divider(),

                  const SizedBox(height: 8),

                  // Product Description
                  const Text(
                    'he is english writer',
                    style: TextStyle(
                      fontSize: 16,
                      color: Color(0xFF757575),
                    ),
                  ),

                  const SizedBox(height: 14),

                  const Text(
                    'Price',
                    style: TextStyle(
                      fontSize: 26,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Divider(),

                  // Price and Discount
                  const Row(
                    children: [
                      Text(
                        '\$25.00',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(width: 8),
                      Text(
                        '\$15.00',
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.grey,
                          decoration: TextDecoration.lineThrough,
                        ),
                      ),
                      SizedBox(width: 8),
                      Text(
                        '40% OFF',
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.green,
                        ),
                      ),
                    ],
                  ),

                  const SizedBox(height: 16),

                  // Rating
                  Row(
                    children: [
                      RatingBar.builder(
                        initialRating: 4.5,
                        minRating: 1,
                        direction: Axis.horizontal,
                        allowHalfRating: true,
                        itemCount: 5,
                        itemSize: 24,
                        itemPadding:
                            const EdgeInsets.symmetric(horizontal: 4.0),
                        itemBuilder: (context, _) => const Icon(
                          Icons.star,
                          color: Colors.amber,
                        ),
                        onRatingUpdate: (rating) {
                          print(rating);
                        },
                      ),
                      const SizedBox(width: 8),
                      const Text(
                        '4.5 Rating',
                        style: TextStyle(fontSize: 16),
                      ),
                    ],
                  ),

                  const SizedBox(height: 12),

                  // Divider(),_________________________

                  // Product Description and Review Tabs
                  DefaultTabController(
                    length: 2,
                    child: Column(
                      children: [
                        const TabBar(
                          labelColor: Colors.orange,
                          dividerHeight: 0,
                          // unselectedLabelColor: Colors.black,
                          indicatorColor: Colors.orange,
                          tabs: [
                            Tab(text: 'Product description'),
                            Tab(text: 'Review'),
                          ],
                        ),
                        Container(
                          height: 192,
                          width: 360,
                          decoration:  BoxDecoration(
                            border: Border.all(width: 3,color: Colors.orange),
                            color: Colors.white,
                            borderRadius: const BorderRadius.only(
                              topLeft: Radius.circular(25.0),
                              bottomRight: Radius.circular(25.0),
                            ),
                          ),
                          child: const TabBarView(
                            children: [
                              // Product Description
                              Padding(
                                padding: EdgeInsets.all(12.0),
                                child: Text(
                                  'Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book hoekjkkjkfhkhakhn nbjhfjhjsh.',style: TextStyle(color: Colors.orange,fontWeight: FontWeight.bold),
                                ),
                              ),
                              // Review Section
                              Center(
                                child: Text('No Reviews Yet',style: TextStyle(color: Colors.orange,fontWeight: FontWeight.bold),),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),

                  SizedBox(height: 16),

                  // Buy Now Button
                ],
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: Container(
        height: 75,
        decoration: BoxDecoration(
          color: Colors.orange[100],
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(25),
            topRight: Radius.circular(25),
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            SizedBox(
              height: 45,
              width: 80,
              child: OutlinedButton(
                onPressed: (){},
                child: Icon(
                  Icons.add_shopping_cart,
                  color: Colors.orange,
                  size: 34,
                ),
                style: OutlinedButton.styleFrom(
                  side: BorderSide(width: 1, color: Colors.white),
                  backgroundColor: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
              ),
            ),

            // SizedBox()
            SizedBox(
                height: 45,
                width: 280,
                child: OutlinedButton(
                  onPressed: _buyNowButton,
                  child: Text(
                    'Buy Now',
                    style: TextStyle(
                        fontSize: 24,
                        color: Colors.orange,
                        fontWeight: FontWeight.bold),
                  ),
                  style: OutlinedButton.styleFrom(
                    side: const BorderSide(width: 1, color: Colors.white),
                    backgroundColor: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                )),
          ],
        ),
      ),
      backgroundColor: Colors.white,
    );
  }

  void _buyNowButton() {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => const Payment(),
      ),
    );
  }

}
