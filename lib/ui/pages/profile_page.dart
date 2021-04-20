part of 'pages.dart';

class ProfilePage extends StatefulWidget {
  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              height: 232,
              width: double.infinity,
              decoration: BoxDecoration(color: Colors.white),
              child: Column(
                children: [
                  Container(
                    width: 110,
                    height: 110,
                    margin: EdgeInsets.only(top: 28),
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage('assets/photo_border.png'),
                        ),
                        color: Colors.white),
                    child: Container(
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        image: DecorationImage(
                            image: NetworkImage(
                                (context.read<UserCubit>().state as UserLoaded)
                                    .user
                                    .picturePath),
                            fit: BoxFit.cover),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    (context.read<UserCubit>().state as UserLoaded).user.name,
                    style: blackFontStyle1,
                  ),
                  Text(
                    (context.read<UserCubit>().state as UserLoaded).user.email,
                    style: greyFontStyle,
                  )
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              width: double.infinity,
              color: Colors.white,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CustomTabBar(
                    titles: ["Account", "FoodMarket"],
                    selectedIndex: selectedIndex,
                    onTap: (index) {
                      setState(() {
                        selectedIndex = index;
                      });
                    },
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  Builder(
                    builder: (context) {
                      return (selectedIndex == 0)
                          ? Column(
                              children: [
                                MenuAccount(
                                  title: "Edit Profile",
                                  onpress: () {},
                                ),
                                MenuAccount(
                                  title: "Home Address",
                                  onpress: () {},
                                ),
                                MenuAccount(
                                  title: "Security",
                                  onpress: () {},
                                ),
                                MenuAccount(
                                  title: "Payments",
                                  onpress: () {},
                                ),
                              ],
                            )
                          : Column(
                              children: [
                                MenuAccount(
                                  title: "Rate App",
                                  onpress: () {},
                                ),
                                MenuAccount(
                                  title: "Help Center",
                                  onpress: () {},
                                ),
                                MenuAccount(
                                  title: "Privacy & Policy",
                                  onpress: () {},
                                ),
                                MenuAccount(
                                  title: "Terms & Conditions",
                                  onpress: () {},
                                ),
                              ],
                            );
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
