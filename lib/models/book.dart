import 'package:bookshelf/view/home_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class Book {
  final String label;
  final String overview;
  final String imageUrl;
  final String genre;
  final String ratingStar;

  Book({
    required this.label,
    required this.genre,
    required this.imageUrl,
    required this.overview,
    required this.ratingStar,
  });
}

List<Book> books = [
  Book(
      label: 'In Search of Lost Time by Marcel Proust',
      genre: 'Fiction',
      overview:
          'Swann\'s Way, the first part of A la recherche de temps perdu, Marcel Proust\'s seven-part cycle, was published in 1913. In it, Proust introduces the themes that run through the entire work. The narrator recalls his childhood, aided by the famous madeleine; and describes M. Swann\'s passion for Odette. The work is incomparable. Edmund Wilson said "[Proust] has supplied for the first time in literature an equivalent in the full scale for the new theory of modern physics."',
      imageUrl:
          'https://d3i5mgdwi2ze58.cloudfront.net/ohbd3xqukj7do2f0o5txmhghfsva',
      ratingStar: '⭐⭐⭐⭐'),
  Book(
      label: 'The Aquanaut',
      genre: 'Family Matters',
      imageUrl:
          'https://apps.npr.org/best-books/assets/synced/covers/2022/0545497612.jpg',
      overview:
          'Caldecott-winner Dan Santat’s second graphic novel, 11 years in the making, is a deft exploration of grief. Sophie, whose father was lost at sea, struggles to adapt to her new life without him. Now living with her famous uncle, Sophie embarks on a journey to fix what’s broken after the loss, whether it’s her family or the marine park that was her father’s life’s work. Poignant and often funny, The Aquanaut is Santat’s triumphant return to the graphic novel genre.',
      ratingStar: '⭐⭐⭐⭐⭐'),
  Book(
    label: 'It Ends with Us',
    genre: 'romance',
    imageUrl:
        'https://images-na.ssl-images-amazon.com/images/I/51qX2RGyhhL._SY291_BO1,204,203,200_QL40_FMwebp_.jpg',
    overview:
        'In this “brave and heartbreaking novel that digs its claws into you and doesn’t let go, long after you’ve finished it” (Anna Todd, New York Times bestselling author) from the #1 New York Times bestselling author of All Your Perfects, a workaholic with a too-good-to-be-true romance can’t stop thinking about her first love.',
    ratingStar: '⭐⭐⭐⭐',
  ),
  Book(
    label: 'Ulysses',
    genre: 'Modernist',
    imageUrl:'https://d3i5mgdwi2ze58.cloudfront.net/f7nkbyqfsnrrlct3hs01jkrz2vdi',
    overview:'Ulysses chronicles the passage of Leopold Bloom through Dublin during an ordinary day, June 16, 1904. The title parallels and alludes to Odysseus (Latinised into Ulysses), the hero of Homer\'s Odyss...',
    ratingStar: '⭐⭐⭐⭐⭐',
  ),
  Book(
    label: 'It Ends with Us',
    genre: 'romance',
    imageUrl:
    'https://images-na.ssl-images-amazon.com/images/I/51qX2RGyhhL._SY291_BO1,204,203,200_QL40_FMwebp_.jpg',
    overview:
    'In this “brave and heartbreaking novel that digs its claws into you and doesn’t let go, long after you’ve finished it” (Anna Todd, New York Times bestselling author) from the #1 New York Times bestselling author of All Your Perfects, a workaholic with a too-good-to-be-true romance can’t stop thinking about her first love.',
    ratingStar: '⭐⭐⭐⭐',
  ),
];
