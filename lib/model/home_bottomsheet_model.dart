class BottomSheetItemModel {
  final int id;
  final String iconUrl;
  final String iconLabel;

  const BottomSheetItemModel({this.id, this.iconUrl, this.iconLabel});
}

const List<BottomSheetItemModel> bottomSheetModels = [
  BottomSheetItemModel(
      id: 0, iconUrl: "assets/images/icons/Movies.svg", iconLabel: "Movies"),
  BottomSheetItemModel(
      id: 1, iconUrl: "assets/images/icons/Plays.svg", iconLabel: "Plays"),
  BottomSheetItemModel(
      id: 2, iconUrl: "assets/images/icons/Fav.svg", iconLabel: "Favorite"),
  BottomSheetItemModel(
      iconUrl: "assets/images/icons/Profile.svg", iconLabel: "Profile")
];
