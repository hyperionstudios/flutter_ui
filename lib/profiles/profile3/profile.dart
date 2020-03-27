class User{
  String name, address, about;
  User({this.name, this.address, this.about});
}

class Profile{
  User user;
  int followers, following, friends, photos;
  Profile({this.user, this.followers, this.following, this.friends , this.photos});
}