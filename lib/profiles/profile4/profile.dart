class User{
  String name, profession, about;
  User({this.name, this.profession, this.about});
}

class Profile{
  User user;
  int followers, following, friends;
  Profile({this.user, this.followers, this.following, this.friends});
}