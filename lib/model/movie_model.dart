import 'cast_model.dart';

class Movie {
  final int id;
  final String name;
  final int rate;
  final String coverImage;
  final String genre;
  final int age;
  final String detailImage;
  final String content;
  final String year;
  final String language;
  final int hourDuration;
  final int minuteDuration;
  final double price;
  final List<Cast> casts;

  const Movie(
      {this.price,
      this.casts,
      this.hourDuration,
      this.minuteDuration,
      this.year,
      this.language,
      this.genre,
      this.age,
      this.id,
      this.name,
      this.rate,
      this.coverImage,
      this.detailImage,
      this.content});
}

const List<Movie> movies = [
  Movie(
      id: 1,
      hourDuration: 1,
      minuteDuration: 23,
      year: '2020',
      language: 'English',
      name: 'Like a Boss',
      coverImage: 'assets/images/cover/likeaboss.jpeg',
      rate: 3,
      genre: 'Comedy',
      age: 18,
      detailImage: 'assets/images/detailcover/likeaboss.jpg',
      price: 10.99,
      content:
          'Two friends with very different ideals start a beauty company together. One is more practical while the other wants to earn her fortune and live a lavish lifestyle.',
      casts: [
        Cast(
            name: 'Will',
            family: 'Forte',
            role: 'Tim (voice)',
            imageUrl: "assets/images/cast/will.png"),
        Cast(
            name: 'Maya',
            family: 'Rudolph',
            role: 'Nanny (voice)',
            imageUrl: "assets/images/cast/maya.png"),
        Cast(
            name: 'Alessia',
            family: 'Cara',
            role: 'Jane (voice)',
            imageUrl: "assets/images/cast/alessia.png"),
        Cast(
            name: 'Terry',
            family: 'Crews',
            role: 'Commander Melanoff (voice)',
            imageUrl: "assets/images/cast/terry.png"),
      ]),
  Movie(
      id: 3,
      name: 'John Wick',
      hourDuration: 1,
      price: 11.99,
      minuteDuration: 41,
      year: '2019',
      language: 'English',
      coverImage: 'assets/images/cover/johnwick3.jpeg',
      rate: 4,
      age: 20,
      genre: 'Action-Crime',
      detailImage: 'assets/images/detailcover/johnwick3.jpg',
      casts: [
        Cast(
            name: 'Will',
            family: 'Forte',
            role: 'Tim (voice)',
            imageUrl: "assets/images/cast/will.png"),
        Cast(
            name: 'Maya',
            family: 'Rudolph',
            role: 'Nanny (voice)',
            imageUrl: "assets/images/cast/maya.png"),
        Cast(
            name: 'Alessia',
            family: 'Cara',
            role: 'Jane (voice)',
            imageUrl: "assets/images/cast/alessia.png"),
        Cast(
            name: 'Terry',
            family: 'Crews',
            role: 'Commander Melanoff (voice)',
            imageUrl: "assets/images/cast/terry.png"),
      ],
      content:
          'John Wick is on the run after killing a member of the international assassins\' guild, and with a \$14 million price tag on his head, he is the target of hit men and women everywhere.'),
  Movie(
      id: 4,
      name: 'Avengers',
      hourDuration: 3,
      price: 15.99,
      minuteDuration: 1,
      year: '2020',
      language: 'English',
      coverImage: 'assets/images/cover/avengers.jpeg',
      rate: 3,
      genre: 'Action-Drama',
      age: 15,
      detailImage: 'assets/images/detailcover/avenger.jpg',
      casts: [
        Cast(
            name: 'Will',
            family: 'Forte',
            role: 'Tim (voice)',
            imageUrl: "assets/images/cast/will.png"),
        Cast(
            name: 'Maya',
            family: 'Rudolph',
            role: 'Nanny (voice)',
            imageUrl: "assets/images/cast/maya.png"),
        Cast(
            name: 'Alessia',
            family: 'Cara',
            role: 'Jane (voice)',
            imageUrl: "assets/images/cast/alessia.png"),
        Cast(
            name: 'Terry',
            family: 'Crews',
            role: 'Commander Melanoff (voice)',
            imageUrl: "assets/images/cast/terry.png"),
      ],
      content:
          'After the devastating events of Avengers: Infinity War (2018), the universe is in ruins. With the help of remaining allies, the Avengers assemble once more in order to reverse Thanos\' actions and restore balance to the universe.'),
  Movie(
      id: 5,
      name: 'The Wrong Missy',
      price: 13.99,
      hourDuration: 1,
      minuteDuration: 30,
      year: '2020',
      language: 'English',
      coverImage: 'assets/images/cover/wrong.jpeg',
      rate: 1,
      genre: 'Comedy-Romance',
      age: 17,
      detailImage: 'assets/images/detailcover/wrong.jpeg',
      casts: [
        Cast(
            name: 'Will',
            family: 'Forte',
            role: 'Tim (voice)',
            imageUrl: "assets/images/cast/will.png"),
        Cast(
            name: 'Maya',
            family: 'Rudolph',
            role: 'Nanny (voice)',
            imageUrl: "assets/images/cast/maya.png"),
        Cast(
            name: 'Alessia',
            family: 'Cara',
            role: 'Jane (voice)',
            imageUrl: "assets/images/cast/alessia.png"),
        Cast(
            name: 'Terry',
            family: 'Crews',
            role: 'Commander Melanoff (voice)',
            imageUrl: "assets/images/cast/terry.png"),
      ],
      content:
          'Tim thinks he is invited the woman of his dreams on a work retreat to Hawaii, realizing too late he mistakenly texted someone from a nightmare blind date.'),
  Movie(
      id: 6,
      hourDuration: 3,
      minuteDuration: 10,
      year: '2013',
      price: 14.99,
      language: 'English',
      name: 'The Wolf of Wall Street',
      coverImage: 'assets/images/cover/wolf.jpeg',
      rate: 5,
      genre: 'Crime-Drama',
      age: 20,
      detailImage: 'assets/images/detailcover/wolf.jpg',
      casts: [
        Cast(
            name: 'Will',
            family: 'Forte',
            role: 'Tim (voice)',
            imageUrl: "assets/images/cast/will.png"),
        Cast(
            name: 'Maya',
            family: 'Rudolph',
            role: 'Nanny (voice)',
            imageUrl: "assets/images/cast/maya.png"),
        Cast(
            name: 'Alessia',
            family: 'Cara',
            role: 'Jane (voice)',
            imageUrl: "assets/images/cast/alessia.png"),
        Cast(
            name: 'Terry',
            family: 'Crews',
            role: 'Commander Melanoff (voice)',
            imageUrl: "assets/images/cast/terry.png"),
      ],
      content:
          'Based on the true story of Jordan Belfort, from his rise to a wealthy stock-broker living the high life to his fall involving crime, corruption and the federal government.'),
];
