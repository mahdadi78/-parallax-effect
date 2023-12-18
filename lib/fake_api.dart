class UiProduct {
  String? imageUrl;
  String? logoUrl;
  String? producer;
  bool? teamWork;
  int? like;
  int? visit;

  UiProduct({
    required this.imageUrl,
    required this.logoUrl,
    required this.producer,
    required this.teamWork,
    required this.like,
    required this.visit,
  });
}

List<UiProduct> uiProductList = [
  UiProduct(
    imageUrl:
        'https://cdn.dribbble.com/users/2140475/screenshots/12738497/media/1760cfb50e916eb9a46f365e1731d5e7.jpg?resize=450x338&vertical=center',
    logoUrl:
        'https://cdn.dribbble.com/users/130631/avatars/normal/901e10c588ecc352b6ff2aac13398b7b.png?1672247809',
    producer: 'kevin moran',
    teamWork: false,
    like: 200,
    visit: 4025,
  ),
  UiProduct(
    imageUrl:
        'https://cdn.dribbble.com/users/1816377/screenshots/11376294/media/b6a6fcd9feb34305b22eefe67c337f75.jpg?resize=450x338&vertical=center',
    logoUrl:
        'https://cdn.dribbble.com/users/7179533/avatars/normal/f422e09d77e62217dc67c457f3cf1807.jpg?1643450830',
    producer: 'Mrtin MOTOMBO',
    teamWork: false,
    like: 85,
    visit: 145,
  ),
  UiProduct(
    imageUrl:
        'https://cdn.dribbble.com/userupload/11029233/file/original-a186249a0450b3ac9ac627f7d990f3eb.png?resize=450x338&vertical=center',
    logoUrl:
        'https://cdn.dribbble.com/users/77241/avatars/normal/e3a0069803b02cfdb3cb9031ecd3b12e.jpg?1599151966',
    producer: 'Fernandez',
    teamWork: false,
    like: 235,
    visit: 1002,
  ),
  UiProduct(
    imageUrl:
        'https://cdn.dribbble.com/users/1032122/screenshots/3263897/the_son_of_toza_folio.jpg?resize=450x338&vertical=center',
    logoUrl:
        'https://cdn.dribbble.com/users/8779526/avatars/normal/6259f6e4d10dfa3ff6026a300e87cd0e.png?1632294266',
    producer: 'gaj',
    teamWork: true,
    like: 458,
    visit: 14,
  ),
  UiProduct(
    imageUrl:
        'https://cdn.dribbble.com/users/674925/screenshots/2856822/media/411ef92c6600622e1fe43ee0e3d7fbff.jpg?resize=400x300&vertical=center',
    logoUrl:
        'https://cdn.dribbble.com/users/485324/avatars/normal/479e0aa76edbad47c51f159fd88e2bfa.png?1551975218',
    producer: 'Catorbily',
    teamWork: true,
    like: 47,
    visit: 195,
  ),
  UiProduct(
    imageUrl:
        'https://cdn.dribbble.com/userupload/11978835/file/original-8654e45d3cc3bb2e20350e664695ae14.jpeg?resize=400x300&vertical=center',
    logoUrl:
        'https://cdn.dribbble.com/users/5146/avatars/normal/Screen_shot_2012-12-15_at_11.50.03_AM.png?1355858187',
    producer: 'donyaSH validation',
    teamWork: false,
    like: 450,
    visit: 3258,
  ),
  UiProduct(
    imageUrl:
        'https://cdn.dribbble.com/users/46089/screenshots/2670356/media/25de7ee3d015e0953fcee33cd306e4fe.png?resize=450x338&vertical=center',
    logoUrl:
        'https://cdn.dribbble.com/users/63407/avatars/original/avatar.png?1322676526',
    producer: 'Fireart Studio',
    teamWork: true,
    like: 78,
    visit: 630,
  ),
  UiProduct(
    imageUrl:
        'https://cdn.dribbble.com/users/52758/screenshots/3434774/let_them_eat_kale_jay_fletcher.jpg?resize=450x338&vertical=center',
    logoUrl:
        'https://cdn.dribbble.com/users/2140475/avatars/normal/b5e49eeff1d288c9bc9a972f50541ab2.jpg?1701143281',
    producer: 'Z Fold Work',
    teamWork: true,
    like: 358,
    visit: 800,
  ),
];
