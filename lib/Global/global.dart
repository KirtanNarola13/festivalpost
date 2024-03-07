import 'package:flutter/material.dart';

class Global {
  static String companyName = '';
  static TextEditingController companyNameController = TextEditingController();
  static String userName = '';
  static TextEditingController userNameController = TextEditingController();
  static String companyNumber = '';
  static TextEditingController companyNumberController =
      TextEditingController();
  static String companyEmail = '';
  static TextEditingController companyEmailController = TextEditingController();

  static List post = [];

  static List<Map> allPost = [
    {
      'category': 'Diwali',
      'thumbnail':
          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRWPaUDvBDsr4_H2fGpLNrO-9VqJlTaj3sQVA&usqp=CAU',
      'allPost': [
        {
          'img':
              'https://i.pinimg.com/564x/f3/b7/e6/f3b7e6e6351c2d1ec1bcc6933bef6a85.jpg',
        },
        {
          'img':
              'https://i.pinimg.com/564x/3e/15/d2/3e15d26311ea8e15bbcb20e8bb168351.jpg',
        },
        {
          'img':
              'https://i.pinimg.com/564x/6d/da/7e/6dda7e0fad4d7c241a279e7aaaf55ef6.jpg',
        },
        {
          'img':
              'https://i.pinimg.com/564x/4d/3a/86/4d3a862820aeab411312523d46dc62bb.jpg',
        },
        {
          'img':
              'https://i.pinimg.com/736x/c8/39/15/c839156c945c0ffc5e9d29afe0cbea03.jpg',
        },
      ],
    },
    {
      'category': 'Uttrayan',
      'thumbnail':
          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRo73Xd1f7XxXWzq458aeNPBLN9ocR5wRC7hl2zvck-h04PXNtBCaxWB_pnu72OxNF6GQ8&usqp=CAU',
      'allPost': [
        {
          'img':
              'https://i.pinimg.com/564x/f4/a4/77/f4a47732237a21ec1b630521012a8959.jpg',
        },
        {
          'img':
              'https://i.pinimg.com/564x/32/99/de/3299deb7d7b2943532f5deaef71f3c2e.jpg',
        },
        {
          'img':
              'https://i.pinimg.com/564x/f7/52/58/f75258c07063885f6989827c9aa8018b.jpg',
        },
        {
          'img':
              'https://i.pinimg.com/564x/d6/13/69/d61369f749b5a3f3e1572ac067eb8d1d.jpg',
        },
        {
          'img':
              'https://i.pinimg.com/564x/9e/11/ed/9e11edbd772971d0cb2a99ac1f51b4ab.jpg',
        },
      ],
    },
    {
      'category': 'Holi',
      'thumbnail':
          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTYkQCmdLoCS-Pr_hssr55LEgsO0Yxe3Bypew&usqp=CAU',
      'allPost': [
        {
          'img':
              'https://i.pinimg.com/564x/b3/3b/7a/b33b7a99c109123f107e10dc9f3b4a80.jpg',
        },
        {
          'img':
              'https://i.pinimg.com/564x/67/f7/14/67f71452f27029dc8c974134efe53e32.jpg',
        },
        {
          'img':
              'https://i.pinimg.com/564x/8e/f3/ce/8ef3cebdc2e4f3bf2da3554200d1a38e.jpg',
        },
        {
          'img':
              'https://i.pinimg.com/564x/de/ef/a9/deefa967ba2fea57c7ea6c1bd3c26e11.jpg',
        },
        {
          'img':
              'https://i.pinimg.com/564x/5f/55/26/5f55269cfa0154e3fe01192accb7182b.jpg',
        },
      ],
    },
    {
      'category': 'Janmashtami',
      'thumbnail':
          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcShJkvZ-5xwyVMhkl9yAr5Kb-0PqwVtJ4FHHA&usqp=CAU ',
      'allPost': [
        {
          'img':
              'https://i.pinimg.com/564x/ba/8a/2c/ba8a2caf88acacf74a15b2781f48b647.jpg',
        },
        {
          'img':
              'https://i.pinimg.com/564x/c3/08/3e/c3083ed335ec71270c980489617f2eae.jpg',
        },
        {
          'img':
              'https://i.pinimg.com/564x/68/fa/73/68fa73df0243868c515ffea8377fefcd.jpg',
        },
        {
          'img':
              'https://i.pinimg.com/564x/d9/0a/36/d90a367bb9f4c3bcbb7afd868f62e7ef.jpg',
        },
        {
          'img':
              'https://i.pinimg.com/564x/15/5e/a5/155ea53a305d7cdbacd20c476b790108.jpg',
        },
      ],
    },
    {
      'category': 'Rakshabandhn',
      'thumbnail':
          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRd6DW0szLQe2JAU5OcSpcBEYLYthzkBcHaZQ&usqp=CAU',
      'allPost': [
        {
          'img':
              'https://i.pinimg.com/564x/8f/2d/46/8f2d469803dc14706e893e916e3d9a83.jpg',
        },
        {
          'img':
              'https://i.pinimg.com/564x/95/a9/ba/95a9baf7092c01977c2e4b74a736c14a.jpg',
        },
        {
          'img':
              'https://i.pinimg.com/736x/44/d1/c2/44d1c26e7f26300e7fdf4b4663ca8394.jpg',
        },
        {
          'img':
              'https://i.pinimg.com/564x/b7/6f/fa/b76ffa0d31faa78a9fa12f2215e6fd3f.jpg',
        },
        {
          'img':
              'https://i.pinimg.com/564x/7d/ee/69/7dee69fafaf10206e08a655fcf9b4a8f.jpg',
        },
      ],
    },
    {
      'category': 'Navratri',
      'thumbnail':
          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSjb5Pyvs7elmlUzb7OXQwk67EgTo6RDGBpKw&usqp=CAU',
      'allPost': [
        {
          'img':
              'https://i.pinimg.com/564x/d6/be/23/d6be23075b6f6f65415654f806659308.jpg',
        },
        {
          'img':
              'https://i.pinimg.com/564x/8d/09/dd/8d09dd4df86f272590aa5da9f1fe8642.jpg',
        },
        {
          'img':
              'https://i.pinimg.com/564x/02/4a/4b/024a4bcb9087bf5fb8b3c7008b6381df.jpg',
        },
        {
          'img':
              'https://i.pinimg.com/564x/30/9a/a9/309aa93daf26c3bdde4d0b8afa71e7c4.jpg',
        },
        {
          'img':
              'https://i.pinimg.com/564x/58/73/0b/58730b2b505bcba152ecec325cf822ee.jpg',
        },
      ],
    },
    {
      'category': 'Dashera',
      'thumbnail':
          'https://images.template.net/112964/-dussehra-background-cb255.jpeg',
      'allPost': [
        {
          'img':
              'https://i.pinimg.com/564x/f5/a1/47/f5a1479b3db41be35bc4764cc0bab15a.jpg',
        },
        {
          'img':
              'https://i.pinimg.com/736x/ff/8a/ac/ff8aaca5eddb8a64f3e570b1f1ff60b0.jpg',
        },
        {
          'img':
              'https://i.pinimg.com/564x/67/b3/1f/67b31fff97883b58761390a096610e1d.jpg',
        },
        {
          'img':
              'https://i.pinimg.com/564x/52/73/44/527344e3fdab5ac6a267eecb9a265ca4.jpg',
        },
        {
          'img':
              'https://i.pinimg.com/736x/0c/c0/64/0cc064d66edfcc98cb78be618b7122b5.jpg',
        },
      ],
    },
    {
      'category': 'New Year',
      'thumbnail':
          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTlEkSp-trc1KfD7fE0PSuG7K894NjrEtNykA&usqp=CAU',
      'allPost': [
        {
          'img':
              'https://i.pinimg.com/564x/05/6a/59/056a590c316b6dc5c2a17a825732d31a.jpg',
        },
        {
          'img':
              'https://i.pinimg.com/564x/04/3f/a4/043fa4c22b6d762e218c395b5a834856.jpg',
        },
        {
          'img':
              'https://i.pinimg.com/736x/c7/0e/87/c70e87e49056344bff34035d3015483a.jpg',
        },
        {
          'img':
              'https://i.pinimg.com/736x/1d/05/94/1d05943908bebadb86b0305f2533767e.jpg',
        },
        {
          'img':
              'https://i.pinimg.com/736x/c7/8a/d5/c78ad5fd4b63494dc3262f048ae9f147.jpg',
        },
      ],
    },
    {
      'category': 'Republic Day',
      'thumbnail':
          'https://i.pinimg.com/564x/5d/07/de/5d07deac1bf7954ed76c437b8df58c20.jpg',
      'allPost': [
        {
          'img':
              'https://i.pinimg.com/564x/f9/88/3c/f9883ccf33f46e5f9d0c5fb7d56d1888.jpg',
        },
        {
          'img':
              'https://img.freepik.com/free-vector/26th-january-happy-republic-day-wishes-card-with-indian-flag_1017-42371.jpg',
        },
        {
          'img':
              'https://thumbs.dreamstime.com/b/republic-day-greeting-butterfly-stock-vector-47549898.jpg',
        },
        {
          'img':
              'https://i.pinimg.com/564x/98/c8/e0/98c8e040fc8d4e08390059385f9c6bb4.jpg',
        },
        {
          'img':
              'https://i.pinimg.com/564x/88/1b/bd/881bbd50fcfe50acc89f4c984aef6e70.jpg',
        },
      ],
    },
    {
      'category': 'Mahashivratri',
      'thumbnail':
          'https://i.pinimg.com/736x/8b/e6/1e/8be61edf526f098545b77f400159ce02.jpg',
      'allPost': [
        {
          'img':
              'https://i.pinimg.com/736x/bf/d3/d7/bfd3d77630a676f66245dad111bd6a76.jpg',
        },
        {
          'img':
              'https://i.pinimg.com/736x/16/8c/a2/168ca2b545cd49babf691e5ea89739e9.jpg',
        },
        {
          'img':
              'https://i.pinimg.com/736x/4f/df/db/4fdfdbaf81e2562682e69aedf03f8335.jpg',
        },
        {
          'img':
              'https://i.pinimg.com/736x/97/4d/74/974d749765362adf4bdbc3fd6f41d485.jpg',
        },
        {
          'img':
              'https://i.pinimg.com/736x/55/57/69/5557696ef7c2c7d3d05947cdcc69a4c4.jpg',
        },
      ],
    },
  ];
}
