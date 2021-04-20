part of 'widgets.dart';

class MenuAccount extends StatelessWidget {
  final String title;
  final Function onpress;
  const MenuAccount({
    this.title,
    this.onpress,
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: defaultMargin),
      child: Container(
        margin: EdgeInsets.only(bottom: 5),
        child: Row(
          children: [
            Text(
              title,
              style: blackFontStyle3,
            ),
            Spacer(),
            IconButton(
                icon: Icon(
                  Icons.arrow_forward_ios_outlined,
                  color: Colors.grey[500],
                  size: 18,
                ),
                onPressed: onpress)
          ],
        ),
      ),
    );
  }
}
