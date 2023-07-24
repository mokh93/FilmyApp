import 'package:filmy/widgets/pymentPlan.dart';
import 'package:flutter/material.dart';

class Payment extends StatefulWidget {
  const Payment({super.key});

  @override
  State<Payment> createState() => _PaymentState();
}

class _PaymentState extends State<Payment> {
  bool onOff = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff282f3f),
      extendBodyBehindAppBar: true,
      extendBody: true,
      appBar: AppBar(
        title: const Text(
          "Payment",
          style: TextStyle(fontWeight: FontWeight.w700),
        ),
        centerTitle: true,
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Column(
            children: [
              const SizedBox(height: 20),
              Container(
                height: 70,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: const Color.fromARGB(94, 189, 189, 189),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Row(
                    children: [
                      const Expanded(
                        child: Text(
                          "Current Package",
                          style: TextStyle(
                              color: Color.fromARGB(255, 255, 255, 255),
                              fontSize: 18,
                              fontWeight: FontWeight.w500),
                        ),
                      ),
                      ElevatedButton(
                          onPressed: () {
                            setState(() {
                              onOff = !onOff;
                            });
                          },
                          style: ElevatedButton.styleFrom(
                              backgroundColor:
                                  const Color.fromARGB(255, 0, 0, 0),
                              minimumSize: const Size(40, 51),
                              maximumSize: const Size(97, 61),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(8))),
                          child: Text(
                            onOff ? "Indivudual" : "Family",
                            style: const TextStyle(
                                color: Colors.white,
                                fontSize: 14,
                                fontWeight: FontWeight.w500),
                          )),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 40),
              InkWell(
                onTap: () {
                  Navigator.pushNamed(context, '/cridetCard');
                },
                child: const PymentPaln(
                  packagetype: 'Individual',
                  price: '\$19/mo',
                  members: '1',
                  color: Color(0xff9DB2BF),
                ),
              ),
              const SizedBox(height: 20),
              InkWell(
                onTap: () {
                  Navigator.pushNamed(context, '/cridetCard');
                },
                child: const PymentPaln(
                  packagetype: 'Couple',
                  price: '\$25/mo',
                  members: '2',
                  color: Color(0xff526D82),
                ),
              ),
              const SizedBox(height: 20),
              InkWell(
                onTap: () {
                  Navigator.pushNamed(context, '/cridetCard');
                },
                child: const PymentPaln(
                  packagetype: 'Family',
                  price: '\$30/mo',
                  members: '4',
                  color: Color.fromARGB(255, 71, 100, 139),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class paymentInfo extends StatelessWidget {
  const paymentInfo({
    super.key,
    required this.inf1,
    required this.inf2,
  });

  final String inf1;
  final String inf2;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            const Icon(
              Icons.check_circle_outlined,
              size: 20,
            ),
            const SizedBox(
              width: 5,
            ),
            Text(
              inf1,
              style: const TextStyle(
                  color: Colors.black,
                  fontSize: 14,
                  fontWeight: FontWeight.w400),
            ),
          ],
        ),
        Row(
          children: [
            const Icon(
              Icons.check_circle_outlined,
              size: 20,
            ),
            const SizedBox(
              width: 5,
            ),
            Text(
              inf2,
              style: const TextStyle(
                  color: Color.fromARGB(255, 0, 0, 0),
                  fontSize: 14,
                  fontWeight: FontWeight.w400),
            ),
          ],
        )
      ],
    );
  }
}
