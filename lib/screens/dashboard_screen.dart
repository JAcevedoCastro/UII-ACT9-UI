import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: FloatingActionButton(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(100)),
        onPressed: () {},
        backgroundColor: Color(0xff0e3792),
        child: Icon(
          Icons.qr_code_2_outlined,
          color: Colors.white,
          size: 38,
        ),
      ),
      body: SafeArea(
        child: Column(children: [
          const Gap(20),
          tapBar(),
          location(),
          const Gap(20),
          searchBar(),
          const Gap(20),
          categories(),
          const Gap(20),
          cardsView()
        ]),
      ),
    );
  }

  Widget tapBar() {
    return Row(
      children: [
        CircleAvatar(
          radius: 24,
          child: Image.asset("assets/images/usuario.jpg"),
        ),
        const Gap(14),
        const Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Bienvenido",
              style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                  color: Color(0xff98A2B3)),
            ),
            Text(
              "Jonathan Acevedo",
              style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.w500,
                  color: Color(0xff344054)),
            )
          ],
        ),
        const Spacer(),
        CircleAvatar(
          radius: 21,
          backgroundColor: const Color(0xffF2F4F7),
          child: Image.asset(
            "assets/images/noti.png",
          ),
        ),
      ],
    ).marginSymmetric(horizontal: 20);
  }

  Widget location() {
    return const Row(
      children: [
        Icon(
          Icons.location_on_sharp,
          color: Color(0xffD0D5DD),
          size: 16,
        ),
        Gap(6),
        Text(
          "Cd.Juárez, Chihuahua",
          style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w500,
              color: Color(0xffD0D5DD)),
        ),
      ],
    ).marginSymmetric(horizontal: 20);
  }

  Widget searchBar() {
    return Container(
      width: Get.width,
      margin: const EdgeInsets.symmetric(horizontal: 20),
      padding: const EdgeInsets.symmetric(horizontal: 20),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        color: const Color(0xffF2F4F7),
      ),
      child: TextField(
        decoration: InputDecoration(
            prefixIcon: Image.asset("assets/images/Lupa.png"),
            suffixIcon: Image.asset("assets/images/Filtro.png"),
            suffixIconConstraints: const BoxConstraints(maxHeight: 20),
            prefixIconConstraints: const BoxConstraints(maxHeight: 24),
            border: InputBorder.none,
            fillColor: const Color(0xffF2F4F7),
            filled: true,
            hintText: "  Buscar...",
            hintStyle: const TextStyle(fontSize: 14, color: Color(0xff748289))),
      ),
    );
  }

  Widget categories() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          "Categorias",
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
        ),
        const Gap(20),
        SizedBox(
          height: 42,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: [
              Container(
                height: 40,
                padding: const EdgeInsets.symmetric(horizontal: 20),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(29),
                    color: const Color(0xff202020)),
                child: const Center(
                    child: Text("Todos",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.w600))),
              ),
              Container(
                height: 40,
                margin: const EdgeInsets.only(left: 10),
                padding: const EdgeInsets.symmetric(horizontal: 20),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(29),
                  border:
                      Border.all(color: const Color(0xff8b9ab0), width: 1.5),
                ),
                child: const Center(
                    child: Text("14 - Pro",
                        style: TextStyle(
                            color: Color(0xff8b9ab0),
                            fontSize: 16,
                            fontWeight: FontWeight.w500))),
              ),
              Container(
                height: 40,
                margin: const EdgeInsets.only(left: 10),
                padding: const EdgeInsets.symmetric(horizontal: 20),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(29),
                  border:
                      Border.all(color: const Color(0xff8b9ab0), width: 1.5),
                ),
                child: const Center(
                    child: Text("13 - Pro",
                        style: TextStyle(
                            color: Color(0xff8b9ab0),
                            fontSize: 16,
                            fontWeight: FontWeight.w500))),
              ),
              Container(
                height: 40,
                margin: const EdgeInsets.only(left: 10),
                padding: const EdgeInsets.symmetric(horizontal: 20),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(29),
                  border:
                      Border.all(color: const Color(0xff8b9ab0), width: 1.5),
                ),
                child: const Center(
                    child: Text("12 - Max",
                        style: TextStyle(
                            color: Color(0xff8b9ab0),
                            fontSize: 16,
                            fontWeight: FontWeight.w500))),
              ),
              Container(
                height: 40,
                margin: const EdgeInsets.only(left: 10),
                padding: const EdgeInsets.symmetric(horizontal: 20),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(29),
                  border:
                      Border.all(color: const Color(0xff8b9ab0), width: 1.5),
                ),
                child: const Center(
                    child: Text("Popsible",
                        style: TextStyle(
                            color: Color(0xff8b9ab0),
                            fontSize: 16,
                            fontWeight: FontWeight.w500))),
              ),
            ],
          ),
        )
      ],
    ).marginSymmetric(horizontal: 20);
  }

  Widget cardsView() {
    return Expanded(
      child: GridView.count(
        primary: false,
        childAspectRatio: 0.71,
        padding: const EdgeInsets.all(20),
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
        crossAxisCount: 2,
        children: <Widget>[
          Container(
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
                color: const Color(0xffF2F4F7),
                borderRadius: BorderRadius.circular(12)),
            child: Stack(
              children: [
                const Positioned(
                  right: 0,
                  child: CircleAvatar(
                    backgroundColor: Color(0xffffffff),
                    radius: 12,
                    child: Icon(
                      Icons.favorite_border_outlined,
                      color: Color(0xffc80202),
                      size: 16,
                    ),
                  ),
                ),
                Column(
                  children: [
                    Image.asset(
                      "assets/images/ip.png",
                      height: 140,
                    ),
                    Row(
                      children: [
                        Column(
                          children: [
                            const Text("Iphone 15 - Rosa",
                                style: TextStyle(
                                    fontSize: 14, fontWeight: FontWeight.w500)),
                            const Gap(8),
                            Container(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 10, vertical: 4),
                              decoration: BoxDecoration(
                                  color: const Color(0xff202020),
                                  borderRadius: BorderRadius.circular(20)),
                              child: const Center(
                                child: Text("\$15,000",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 14,
                                        fontWeight: FontWeight.w500)),
                              ),
                            )
                          ],
                        ),
                        const Spacer(),
                        const CircleAvatar(
                          backgroundColor: Color(0xff202020),
                          radius: 12,
                          child: Icon(
                            Icons.add,
                            color: Colors.white,
                            size: 16,
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ],
            ),
          ),
          Container(
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
                color: const Color(0xffF2F4F7),
                borderRadius: BorderRadius.circular(12)),
            child: Stack(
              children: [
                const Positioned(
                  right: 0,
                  child: CircleAvatar(
                    backgroundColor: Color(0xff202020),
                    radius: 12,
                    child: Icon(
                      Icons.favorite_border_outlined,
                      color: Colors.white,
                      size: 16,
                    ),
                  ),
                ),
                Column(
                  children: [
                    Image.asset(
                      "assets/images/ip3.png",
                      height: 140,
                    ),
                    Row(
                      children: [
                        Column(
                          children: [
                            const Text("Iphone 15 - Azul",
                                style: TextStyle(
                                    fontSize: 14, fontWeight: FontWeight.w500)),
                            const Gap(8),
                            Container(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 10, vertical: 4),
                              decoration: BoxDecoration(
                                  color: const Color(0xff202020),
                                  borderRadius: BorderRadius.circular(20)),
                              child: const Center(
                                child: Text("\$25,000",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 14,
                                        fontWeight: FontWeight.w500)),
                              ),
                            )
                          ],
                        ),
                        const Spacer(),
                        const CircleAvatar(
                          backgroundColor: Color(0xff202020),
                          radius: 12,
                          child: Icon(
                            Icons.add,
                            color: Colors.white,
                            size: 16,
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ],
            ),
          ),
          Container(
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
                color: const Color(0xffF2F4F7),
                borderRadius: BorderRadius.circular(12)),
            child: Stack(
              children: [
                const Positioned(
                  right: 0,
                  child: CircleAvatar(
                    backgroundColor: Color(0xff202020),
                    radius: 12,
                    child: Icon(
                      Icons.favorite_border_outlined,
                      color: Colors.white,
                      size: 16,
                    ),
                  ),
                ),
                Column(
                  children: [
                    Image.asset(
                      "assets/images/ip4.png",
                      height: 140,
                    ),
                    Row(
                      children: [
                        Column(
                          children: [
                            const Text("Iphone - Negro",
                                style: TextStyle(
                                    fontSize: 14, fontWeight: FontWeight.w500)),
                            const Gap(8),
                            Container(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 10, vertical: 4),
                              decoration: BoxDecoration(
                                  color: const Color(0xff202020),
                                  borderRadius: BorderRadius.circular(20)),
                              child: const Center(
                                child: Text("\$40,000",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 14,
                                        fontWeight: FontWeight.w500)),
                              ),
                            )
                          ],
                        ),
                        const Spacer(),
                        const CircleAvatar(
                          backgroundColor: Color(0xff202020),
                          radius: 12,
                          child: Icon(
                            Icons.add,
                            color: Colors.white,
                            size: 16,
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ],
            ),
          ),
          Container(
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
                color: const Color(0xffF2F4F7),
                borderRadius: BorderRadius.circular(12)),
            child: Stack(
              children: [
                const Positioned(
                  right: 0,
                  child: CircleAvatar(
                    backgroundColor: Color(0xffffffff),
                    radius: 12,
                    child: Icon(
                      Icons.favorite_border_outlined,
                      color: Color(0xffd90808),
                      size: 16,
                    ),
                  ),
                ),
                Column(
                  children: [
                    Image.asset(
                      "assets/images/ip5.png",
                      height: 140,
                    ),
                    Row(
                      children: [
                        Column(
                          children: [
                            const Text("Iphone - Amarillo",
                                style: TextStyle(
                                    fontSize: 14, fontWeight: FontWeight.w500)),
                            const Gap(8),
                            Container(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 10, vertical: 4),
                              decoration: BoxDecoration(
                                  color: const Color(0xff202020),
                                  borderRadius: BorderRadius.circular(20)),
                              child: const Center(
                                child: Text("\$29,999",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 14,
                                        fontWeight: FontWeight.w500)),
                              ),
                            )
                          ],
                        ),
                        const Spacer(),
                        const CircleAvatar(
                          backgroundColor: Color(0xff202020),
                          radius: 12,
                          child: Icon(
                            Icons.add,
                            color: Colors.white,
                            size: 16,
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ],
            ),
          ),
          Container(
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
                color: const Color(0xffF2F4F7),
                borderRadius: BorderRadius.circular(12)),
            child: Stack(
              children: [
                const Positioned(
                  right: 0,
                  child: CircleAvatar(
                    backgroundColor: Color(0xff202020),
                    radius: 12,
                    child: Icon(
                      Icons.favorite_border_outlined,
                      color: Colors.white,
                      size: 16,
                    ),
                  ),
                ),
                Column(
                  children: [
                    Image.asset(
                      "assets/images/ip6.png",
                      height: 140,
                    ),
                    Row(
                      children: [
                        Column(
                          children: [
                            const Text("Iphone 15 - Verde",
                                style: TextStyle(
                                    fontSize: 14, fontWeight: FontWeight.w500)),
                            const Gap(8),
                            Container(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 10, vertical: 4),
                              decoration: BoxDecoration(
                                  color: const Color(0xff202020),
                                  borderRadius: BorderRadius.circular(20)),
                              child: const Center(
                                child: Text("\$18,999",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 14,
                                        fontWeight: FontWeight.w500)),
                              ),
                            )
                          ],
                        ),
                        const Spacer(),
                        const CircleAvatar(
                          backgroundColor: Color(0xff202020),
                          radius: 12,
                          child: Icon(
                            Icons.add,
                            color: Colors.white,
                            size: 16,
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ],
            ),
          ),
          Container(
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
                color: const Color(0xffF2F4F7),
                borderRadius: BorderRadius.circular(12)),
            child: Stack(
              children: [
                const Positioned(
                  right: 0,
                  child: CircleAvatar(
                    backgroundColor: Color(0xff202020),
                    radius: 12,
                    child: Icon(
                      Icons.favorite_border_outlined,
                      color: Colors.white,
                      size: 16,
                    ),
                  ),
                ),
                Column(
                  children: [
                    Image.asset(
                      "assets/images/ip7.png",
                      height: 140,
                    ),
                    Row(
                      children: [
                        Column(
                          children: [
                            const Text("Iphone 15 - Blue",
                                style: TextStyle(
                                    fontSize: 14, fontWeight: FontWeight.w500)),
                            const Gap(8),
                            Container(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 10, vertical: 4),
                              decoration: BoxDecoration(
                                  color: const Color(0xff202020),
                                  borderRadius: BorderRadius.circular(20)),
                              child: const Center(
                                child: Text("\$25,999",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 14,
                                        fontWeight: FontWeight.w500)),
                              ),
                            )
                          ],
                        ),
                        const Spacer(),
                        const CircleAvatar(
                          backgroundColor: Color(0xff202020),
                          radius: 12,
                          child: Icon(
                            Icons.add,
                            color: Colors.white,
                            size: 16,
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ],
            ),
          ),
          Container(
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
                color: const Color(0xffF2F4F7),
                borderRadius: BorderRadius.circular(12)),
            child: Stack(
              children: [
                const Positioned(
                  right: 0,
                  child: CircleAvatar(
                    backgroundColor: Color(0xff202020),
                    radius: 12,
                    child: Icon(
                      Icons.favorite_border_outlined,
                      color: Colors.white,
                      size: 16,
                    ),
                  ),
                ),
                Column(
                  children: [
                    Image.asset(
                      "assets/images/ip8.png",
                      height: 140,
                    ),
                    Row(
                      children: [
                        Column(
                          children: [
                            const Text("Iphone 15 - Arena",
                                style: TextStyle(
                                    fontSize: 14, fontWeight: FontWeight.w500)),
                            const Gap(8),
                            Container(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 10, vertical: 4),
                              decoration: BoxDecoration(
                                  color: const Color(0xff202020),
                                  borderRadius: BorderRadius.circular(20)),
                              child: const Center(
                                child: Text("\$35,000",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 14,
                                        fontWeight: FontWeight.w500)),
                              ),
                            )
                          ],
                        ),
                        const Spacer(),
                        const CircleAvatar(
                          backgroundColor: Color(0xff202020),
                          radius: 12,
                          child: Icon(
                            Icons.add,
                            color: Colors.white,
                            size: 16,
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ],
            ),
          ),
          Container(
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
                color: const Color(0xffF2F4F7),
                borderRadius: BorderRadius.circular(12)),
            child: Stack(
              children: [
                const Positioned(
                  right: 0,
                  child: CircleAvatar(
                    backgroundColor: Color(0xff202020),
                    radius: 12,
                    child: Icon(
                      Icons.favorite_border_outlined,
                      color: Colors.white,
                      size: 16,
                    ),
                  ),
                ),
                Column(
                  children: [
                    Image.asset(
                      "assets/images/ip9.png",
                      height: 140,
                    ),
                    Row(
                      children: [
                        Column(
                          children: [
                            const Text("Iphone 15 - Black",
                                style: TextStyle(
                                    fontSize: 14, fontWeight: FontWeight.w500)),
                            const Gap(8),
                            Container(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 10, vertical: 4),
                              decoration: BoxDecoration(
                                  color: const Color(0xff202020),
                                  borderRadius: BorderRadius.circular(20)),
                              child: const Center(
                                child: Text("\$25,000",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 14,
                                        fontWeight: FontWeight.w500)),
                              ),
                            )
                          ],
                        ),
                        const Spacer(),
                        const CircleAvatar(
                          backgroundColor: Color(0xff202020),
                          radius: 12,
                          child: Icon(
                            Icons.add,
                            color: Colors.white,
                            size: 16,
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
