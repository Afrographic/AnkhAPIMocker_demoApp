import 'package:ankh_api_mocker/package/AnkhAPIMocker/ankh_api_mocker.dart';

class KemetPost {
  int idUser;
  String userName;
  String userAvatar;
  String datePosted;
  String postImageURL;
  String postDescriptionlen100;
  int totalLikes;
  int totalComments;

  KemetPost({
    required this.idUser,
    required this.userName,
    required this.userAvatar,
    required this.datePosted,
    required this.postImageURL,
    required this.postDescriptionlen100,
    required this.totalLikes,
    required this.totalComments,
  });

  KemetPost fromJSON(dynamic kemetPostJSON) {
    return KemetPost(
      idUser: kemetPostJSON["idUser"],
      userName: kemetPostJSON["userName"],
      userAvatar: kemetPostJSON["userAvatar"],
      datePosted: kemetPostJSON["datePosted"],
      postImageURL: kemetPostJSON["postImageURL"],
      postDescriptionlen100: kemetPostJSON["postDescriptionlen100"],
      totalLikes: kemetPostJSON["totalLikes"],
      totalComments: kemetPostJSON["totalComments"],
    );
  }

  static String ankhAPIMockerInit = """ 
 int idUser;
  String userName;
  String userAvatar;
  String datePosted;
  String postImageURL;
  String postDescriptionlen100;
  int totalLikes;
  int totalComments;
  """;
}
