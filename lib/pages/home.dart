import 'package:flutter/material.dart';
import 'package:my_wallet/utils/myButton.dart';
import 'package:my_wallet/utils/myCard.dart';
import 'package:my_wallet/utils/myListle.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = PageController();
    return Scaffold(
      backgroundColor: Colors.grey[300],
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Colors.pink,
        child: const Icon(Icons.monetization_on, size: 30,),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            IconButton(onPressed: () {}, icon: const Icon(Icons.home), iconSize: 32, color: Colors.pink[200],),
            IconButton(onPressed: () {}, icon: const Icon(Icons.settings, size: 32) ,color: Colors.grey)
            ],
        ),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25.0),
          child: Column(
            children: [
              const SizedBox(
                height: 5,
              ),
              //app bar
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: const [
                      Text(
                        'My',
                        style: TextStyle(
                            fontSize: 26, fontWeight: FontWeight.bold),
                      ),
                      Text(' Wallet', style: TextStyle(fontSize: 26))
                    ],
                  ),
                  Container(
                      padding: const EdgeInsets.all(4),
                      decoration: const BoxDecoration(
                          color: Colors.grey, shape: BoxShape.circle),
                      child: const Icon(Icons.add))
                ],
              ),
              const SizedBox(
                height: 15,
              ),
              //card
              Container(
                height: 200,
                child: PageView(
                    scrollDirection: Axis.horizontal,
                    controller: controller,
                    children: [
                      MyCard(
                        balance: 'Balance',
                        solde: '5,250',
                        numCard: '3458',
                        dateExp: '10/24',
                        color: Colors.deepPurple[400],
                      ),
                      MyCard(
                        balance: 'Balance',
                        solde: '5,250',
                        numCard: '3458',
                        dateExp: '10/24',
                        color: Colors.blue[400],
                      ),
                      MyCard(
                        balance: 'Balance',
                        solde: '5,250',
                        numCard: '3458',
                        dateExp: '10/24',
                        color: Colors.green[400],
                      )
                    ]),
              ),
              const SizedBox(
                height: 20,
              ),
              SmoothPageIndicator(
                controller: controller,
                count: 3,
                effect:
                    ExpandingDotsEffect(activeDotColor: Colors.grey.shade800),
              ),
              const SizedBox(
                height: 20,
              ),

              //3 buttons
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: const [
                  // send button
                  MyButton(text: 'Send', image: 'lib/icons/sending.png'),
                  // pay button
                  MyButton(
                      text: 'Pay', image: 'lib/icons/cartes-de-credit.png'),
                  // Bill button
                  MyButton(text: 'Bills', image: 'lib/icons/bill.png'),
                ],
              ),
              const SizedBox(
                height: 20,
              ),

              //stats + transactional
              Column(
                children: const [
                  //statistics
                  MyListle(
                      title: 'Statisticts',
                      subTiltle: 'Payments and Icome',
                      iconPath: 'lib/icons/statistics.png'),

                  //transaction
                  MyListle(
                      title: 'Transactions',
                      subTiltle: 'Transaction History',
                      iconPath: 'lib/icons/transaction.png'),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
