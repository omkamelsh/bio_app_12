import 'package:flutter/material.dart';
class Biocard extends StatelessWidget {
  const Biocard({
    required this.leadingIcon,
    required this.title,
    required this.subTitel,
    required this.trailingicon,
    required this.onPressed,
     this.marginBottom =0,
    Key? key,
  }) : super(key: key);
      final IconData leadingIcon;
      final String title;
      final String subTitel;
      final IconData trailingicon;
      final double marginBottom;
      final void Function() onPressed;
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),

      ),

      margin:  EdgeInsetsDirectional.only(start: 20,end: 20,bottom: marginBottom,),

      child: ListTile(
        leading: Icon(leadingIcon),
        title: Text(title,style: TextStyle(
            fontWeight: FontWeight.bold
        ),),
        subtitle: Text(subTitel),
        trailing: IconButton(
                     onPressed: onPressed
          ,          icon: Icon(trailingicon),


        ),

      ),
    );
  }
}
