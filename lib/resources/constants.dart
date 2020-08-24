import 'package:flutter/material.dart';

const CATEGORIES = [
  {
    'title': 'Clothes',
    'asset': 'assets/images/suit.svg',
  },
  {
    'title': 'Stationaries',
    'asset': 'assets/images/stationary.svg',
  },
  {
    'title': 'Books',
    'asset': 'assets/images/book.svg',
  },
  {
    'title': 'Stationaries',
    'asset': 'assets/images/stationary.svg',
  },
  {
    'title': 'Clothes',
    'asset': 'assets/images/suit.svg',
  },
  {
    'title': 'Stationaries',
    'asset': 'assets/images/stationary.svg',
  },
];

const NEWS = [
  {
    'url':
        'https://static01.nyt.com/images/2020/01/10/multimedia/10xp-cnn-SUB/10xp-cnn-SUB-mobileMasterAt3x.jpg',
    'title': 'January Made a law Farm',
    'subtitle':
        'It is a long established fact that a reader will be distracted by ',
    'date': 'March 20 2020'
  },
  {
    'url':
        'https://static01.nyt.com/images/2020/01/10/multimedia/10xp-cnn-SUB/10xp-cnn-SUB-mobileMasterAt3x.jpg',
    'title': 'January Made a law Farm',
    'subtitle':
        'It is a long established fact that a reader will be distracted by the readable',
    'date': 'Feb 13 2020'
  },
  {
    'url':
        'https://static01.nyt.com/images/2020/01/10/multimedia/10xp-cnn-SUB/10xp-cnn-SUB-mobileMasterAt3x.jpg',
    'title': 'January Made a law Farm',
    'subtitle':
        'It is a long established fact that a reader will be distracted',
    'date': 'Jan 23 2020'
  },
  {
    'url':
        'https://static01.nyt.com/images/2020/01/10/multimedia/10xp-cnn-SUB/10xp-cnn-SUB-mobileMasterAt3x.jpg',
    'title': 'January Made a law Farm',
    'subtitle':
        'It is a long established fact that a reader will be distracted by the readable',
    'date': 'Dec 04 2019'
  },
  {
    'url':
        'https://static01.nyt.com/images/2020/01/10/multimedia/10xp-cnn-SUB/10xp-cnn-SUB-mobileMasterAt3x.jpg',
    'title': 'January Made a law Farm',
    'subtitle':
        'It is a long established fact that a reader will be distracted by the readable',
    'date': 'Nov 10 2020'
  },
  {
    'url':
        'https://static01.nyt.com/images/2020/01/10/multimedia/10xp-cnn-SUB/10xp-cnn-SUB-mobileMasterAt3x.jpg',
    'title': 'January Made a law Farm',
    'subtitle':
        'It is a long established fact that a reader will be distracted by the readable',
    'date': 'Oct 03 2020'
  },
];

const USER = {
  'dp': 'https://miro.medium.com/max/3150/1*J_BOSSzUz4qBvAjFb-YgZA@2x.jpeg',
  'userName': 'James Kaguo',
  'isUser': true,
};

var menus = [
  {
    'name': 'Home',
    'icon': Icons.home,
    'route': '/',
    'active': false,
  },
  {
    'name': 'Shopping',
    'icon': Icons.shop,
    'route': '/shopping',
    'active': false,
  },
  {
    'name': 'Booking',
    'icon': Icons.bookmark,
    'route': '/booking',
    'active': false,
  },
  // {
  //   'name': 'Media',
  //   'icon': Icons.play_circle_filled,
  //   'route': '/media',
  //   'active': false,
  // },
  {
    'name': 'Learning',
    'icon': Icons.account_box,
    'route': '/learning',
    'active': false,
  },
  {
    'name': 'News',
    'icon': Icons.new_releases,
    'route': '/news',
    'active': false,
  },
  {
    'name': 'Live Chat',
    'icon': Icons.chat_bubble,
    'route': '/live_chat',
    'active': false
  }
];

var filtersItem = [
  {
    'name': 'All',
    'active': false,
  },
  {
    'name': 'Criminal',
    'active': true,
  },
  {
    'name': 'cases',
    'active': false,
  },
  {
    'name': 'Debit',
    'active': false,
  },
  {
    'name': 'Law Sute',
    'active': false,
  },
];

var filterShopping = [
  {
    'name': 'All',
    'active': true,
  },
  {
    'name': 'Books',
    'active': false,
  },
  {
    'name': 'Stationaries',
    'active': false,
  },
  {
    'name': 'Clothers',
    'active': false,
  },
  {
    'name': 'Tools',
    'active': false,
  },
];

var bookingList = [
  {
    'url': 'https://www.zoomnews.in/uploads_2019/newses/pc_798716429_sm.jpg',
    'name': 'Lee StoneLee',
    'specialization': 'Crime Lawyer',
    'booked': false,
  },
  {
    'url':
        'https://m.media-amazon.com/images/M/MV5BMTA0NDA0Mzk1MjZeQTJeQWpwZ15BbWU4MDUyOTA2MzIy._V1_SX1500_CR0,0,1500,999_AL_.jpg',
    'name': 'Marry GoldLock',
    'specialization': 'Law Sutes Lawyer',
    'booked': false,
  },
  {
    'url':
        'https://cdn-metalogo.pearltrees.com/b8/b3/b8b3fc7bb7cef1ca31a78745a185fc1f-pearlsquare.jpg?v=2019-16-09',
    'name': 'Cynthia Zocca',
    'specialization': 'Robary Lawyer',
    'booked': false,
  },
  {
    'url': 'https://www.zoomnews.in/uploads_2019/newses/pc_798716429_sm.jpg',
    'name': 'Lee Stewart',
    'specialization': 'Crime Lawyer',
    'booked': false,
  },
  {
    'url':
        'https://m.media-amazon.com/images/M/MV5BMTA0NDA0Mzk1MjZeQTJeQWpwZ15BbWU4MDUyOTA2MzIy._V1_SX1500_CR0,0,1500,999_AL_.jpg',
    'name': 'Marry GoldLock',
    'specialization': 'Law Sutes Lawyer',
    'booked': false,
  },
  {
    'url':
        'https://cdn-metalogo.pearltrees.com/b8/b3/b8b3fc7bb7cef1ca31a78745a185fc1f-pearlsquare.jpg?v=2019-16-09',
    'name': 'Cynthia Zocca',
    'specialization': 'Robary Lawyer',
    'booked': false,
  },
  {
    'url': 'https://www.zoomnews.in/uploads_2019/newses/pc_798716429_sm.jpg',
    'name': 'Lee Stewart',
    'specialization': 'Crime Lawyer',
    'booked': false,
  },
  {
    'url':
        'https://m.media-amazon.com/images/M/MV5BMTA0NDA0Mzk1MjZeQTJeQWpwZ15BbWU4MDUyOTA2MzIy._V1_SX1500_CR0,0,1500,999_AL_.jpg',
    'name': 'Marry GoldLock',
    'specialization': 'Law Sutes Lawyer',
    'booked': false,
  },
  {
    'url':
        'https://cdn-metalogo.pearltrees.com/b8/b3/b8b3fc7bb7cef1ca31a78745a185fc1f-pearlsquare.jpg?v=2019-16-09',
    'name': 'Cynthia Zocca',
    'specialization': 'Robary Lawyer',
    'booked': false,
  },
  {
    'url':
        'https://cdn-metalogo.pearltrees.com/b8/b3/b8b3fc7bb7cef1ca31a78745a185fc1f-pearlsquare.jpg?v=2019-16-09',
    'name': 'Cynthia Zocca',
    'specialization': 'Robary Lawyer',
    'booked': false,
  },
];

const PRODUCTS = [
  {
    'name': 'Dell 213',
    'location': 'Ilala, Dar es Salaam',
    'id': 1,
    'imageUrl': 'https://i.ebayimg.com/images/g/zi4AAOSwRVRelzyt/s-l500.jpg',
    'price': '500,000',
  },
  {
    'name': 'Dell 213',
    'location': 'Ilala, Dar es Salaam',
    'id': 2,
    'imageUrl': 'https://i.ebayimg.com/images/g/mQMAAOSwl4Ze6kzC/s-l500.jpg',
    'price': '300,000',
  },
  {
    'name': 'Dell 213',
    'location': 'Ilala, Dar es Salaam',
    'id': 3,
    'imageUrl': 'https://i.ebayimg.com/images/g/BykAAOSwOjxcwrzh/s-l500.jpg',
    'price': '600,000',
  },
  {
    'name': 'Dell 213',
    'location': 'Ilala, Dar es Salaam',
    'id': 4,
    'imageUrl': 'https://i.ebayimg.com/images/g/BYoAAOSw7F9cQu4v/s-l500.jpg',
    'price': '700,000',
  },
  {
    'name': 'Dell 213',
    'location': 'Ilala, Dar es Salaam',
    'id': 5,
    'imageUrl': 'https://i.ebayimg.com/images/g/Jd8AAOSwSK9diN5Q/s-l500.jpg',
    'price': '100,000',
  },
  {
    'name': 'Dell 213',
    'location': 'Ilala, Dar es Salaam',
    'id': 6,
    'imageUrl': 'https://i.ebayimg.com/images/g/lQwAAOSw~Nta7IQQ/s-l500.jpg',
    'price': '400,000',
  },
  {
    'name': 'Dell 213',
    'location': 'Ilala, Dar es Salaam',
    'id': 7,
    'imageUrl': 'https://i.ebayimg.com/images/g/WDYAAOSwXhtZjLpj/s-l500.jpg',
    'price': '900,000',
  },
  {
    'name': 'Dell 213',
    'location': 'Ilala, Dar es Salaam',
    'id': 8,
    'imageUrl': 'https://i.ebayimg.com/images/g/F9EAAOSwvrddLEys/s-l500.jpg',
    'price': '1,000,000',
  },
  {
    'name': 'Dell 213',
    'location': 'Ilala, Dar es Salaam',
    'id': 9,
    'imageUrl': 'https://i.ebayimg.com/images/g/2wsAAOSwERFeAB3o/s-l500.jpg',
    'price': '300,000',
  },
];

const PRODUCTDETAILS = {
  'name': 'Rare Law Book',
  'location': 'Sinza, Dar es Salaam',
  'detail':
      'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their',
  'id': 8,
  'imageUrl': 'https://i.ebayimg.com/images/g/F9EAAOSwvrddLEys/s-l500.jpg',
  'price': '1,000,000',
};

final List<String> images = [
  'https://i.ebayimg.com/images/g/F9EAAOSwvrddLEys/s-l500.jpg',
  'https://i.ebayimg.com/images/g/UPcAAOSwJ~dd67Wa/s-l500.png',
  'https://i.ebayimg.com/images/g/YSYAAOSw8bBef17w/s-l500.jpg',
  'https://i.ebayimg.com/images/g/~g0AAOSwrQtdoJVp/s-l500.png',
  'https://i.ebayimg.com/images/g/VtsAAOSwRGJeX7No/s-l500.jpg',
];

final List<String> learningImages = [
  'https://static.vecteezy.com/system/resources/previews/000/192/828/non_2x/vector-abstract-landscape-illustration.jpg',
  'https://static.vecteezy.com/system/resources/previews/000/208/995/non_2x/vector-abstract-red-landscape-illustration.jpg',
  'https://static.vecteezy.com/system/resources/previews/000/210/793/non_2x/vector-abstract-landscape-illustration.jpg',
];
