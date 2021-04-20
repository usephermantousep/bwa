part of 'pages.dart';

class IllustrationPage extends StatelessWidget {
  final String title;
  final String subtitle;
  final String picturePath;
  final String buttonTitle1;
  final String buttonTitle2;
  final Function buttonTap1;
  final Function buttonTap2;

  IllustrationPage(
      {@required this.title,
      @required this.subtitle,
      @required this.picturePath,
      @required this.buttonTitle1,
      this.buttonTitle2,
      @required this.buttonTap1,
      this.buttonTap2});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 150,
              height: 150,
              margin: EdgeInsets.only(bottom: 50),
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(picturePath),
                ),
              ),
            ),
            Text(
              title,
              style: blackFontStyle1.copyWith(
                fontWeight: FontWeight.w500,
              ),
              textAlign: TextAlign.center,
            ),
            Text(
              subtitle,
              style: greyFontStyle.copyWith(
                fontWeight: FontWeight.w300,
              ),
              textAlign: TextAlign.center,
            ),
            Container(
              margin: EdgeInsets.only(top: 30, bottom: 12),
              width: 200,
              height: 45,
              child: ElevatedButton(
                onPressed: buttonTap1,
                style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(mainColor),
                    elevation: MaterialStateProperty.all(0)),
                child: Text(
                  buttonTitle1,
                  style: blackFontStyle3.copyWith(fontWeight: FontWeight.w500),
                ),
              ),
            ),
            (buttonTap2 == null)
                ? SizedBox()
                : SizedBox(
                    width: 200,
                    height: 45,
                    child: ElevatedButton(
                      onPressed: buttonTap2,
                      style: ButtonStyle(
                          backgroundColor:
                              MaterialStateProperty.all('8D92A3'.toColor()),
                          elevation: MaterialStateProperty.all(0)),
                      child: Text(
                        buttonTitle2 ?? "title",
                        style: blackFontStyle3.copyWith(
                            fontWeight: FontWeight.w500, color: Colors.white),
                      ),
                    ),
                  )
          ],
        ),
      ),
    );
  }
}
