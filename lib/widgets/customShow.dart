import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomShow extends StatelessWidget {
  const CustomShow({
    super.key,
    required this.listname,
    required this.shadow_width,
    required this.shadow_height,
    required this.container_width,
    required this.container_height,
    required this.image,
    required this.subtitle,
    required this.title,
    required this.title_font_size,
    required this.subtitle_font_size,
    required this.ontap,
  });
  final double title_font_size;
  final double subtitle_font_size;
  final double shadow_width;
  final double shadow_height;
  final double container_width;
  final double container_height;
  final List listname;
  final String image;
  final String subtitle;
  final String title;
  final String ontap;
  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: BoxConstraints(
        maxHeight: container_height,
      ),
      child: ListView.builder(
          physics: const BouncingScrollPhysics(),
          scrollDirection: Axis.horizontal,
          itemCount: listname.length,
          itemBuilder: (context, index) {
            return InkWell(
              onTap: listname[index][ontap],
              child: Container(
                margin: EdgeInsets.only(
                    right: index == listname.length - 1 ? 0 : 10),
                width: container_width,
                decoration: BoxDecoration(
                    color: Colors.grey,
                    borderRadius: BorderRadius.circular(20),
                    image: DecorationImage(
                      image: NetworkImage("${listname[index][image]}"),
                      fit: BoxFit.cover,
                    )),
                child: Stack(
                  clipBehavior: Clip.antiAlias,
                  children: [
                    Container(
                      height: shadow_height,
                      width: shadow_width,
                      decoration: BoxDecoration(
                        color: const Color.fromARGB(123, 0, 0, 0),
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(15, 0, 0, 15),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "${listname[index][subtitle]}",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: subtitle_font_size,
                                fontWeight: FontWeight.w300),
                          ),
                          Text(
                            "${listname[index][title]}",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: title_font_size,
                                fontWeight: FontWeight.w700),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            );
          }),
    );
  }
}
