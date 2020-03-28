import 'package:flutterui/profiles/profile4/profile.dart';

class ProfileProvider{

  static Profile getProfile(){
    return Profile(
      user: User(
        name: 'Erik Walters',
        profession: 'Photography',
        about: 'Published wedding, beauty, fashion, portrait photographer and retoucher.'
      ),
      following: 364,
      followers: 2318,
      friends: 175
    );
  }

}