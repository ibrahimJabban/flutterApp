import 'models/category.dart';
import 'models/trip.dart';

const categoriesData = [
  Category(
    id: 'c1',
    title: 'Bergen',
    imageUrl: 'assets/a.jpg',
  ),
  Category(
    id: 'c2',
    title: 'See',
    imageUrl: 'assets/b.jpg',
  ),
  Category(
    id: 'c3',
    title: 'Strände',
    imageUrl: 'assets/c.jpg',
  ),
  Category(
    id: 'c4',
    title: 'Wüste',
    imageUrl: 'assets/d.jpg',
  ),
  Category(
    id: 'c5',
    title: 'Alte Städte',
    imageUrl: 'assets/e.jpg',
  ),
  Category(
    id: 'c6',
    title: 'Andere',
    imageUrl: 'assets/f.jpg',
  ),
];

const tripsData = [
  Trip(
    id: 'm1',
    categories: [
      'c1',
    ],
    title: 'Die Alpen',
    tripType: TripType.exploration,
    season: Season.winter,
    imageUrl: 'assets/g.jpg',
    duration: 20,
    activities: [
      'Besuch von archäologischen Stätten',
      'Stadtrundgang',
      'Einkaufszentren besuchen',
      'Mittagessen',
      'Genießen der Landschaft',
    ],
    program: [
      'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
      'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
      'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
      'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
      'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
      'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
    ],
    isInSummer: false,
    isForFamilies: true,
    isInWinter: true,
  ),
  Trip(
    id: 'm2',
    categories: [
      'c1',
    ],
    title: 'Südliche Berge',
    tripType: TripType.exploration,
    season: Season.winter,
    imageUrl: 'assets/h.jpg',
    duration: 10,
    activities: [
      'Besuch von archäologischen Stätten',
      'Stadtrundgang',
      'Einkaufszentren besuchen',
      'Mittagessen',
      'Genießen der Landschaft',
    ],
    program: [
      'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
      'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
      'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
      'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
    ],
    isInSummer: false,
    isForFamilies: false,
    isInWinter: true,
  ),
  Trip(
    id: 'm3',
    categories: [
      'c1',
    ],
    title: 'Hohe Berge',
    tripType: TripType.recovery,
    season: Season.winter,
    imageUrl: 'assets/i.jpg',
    duration: 45,
    activities: [
      'Besuch von archäologischen Stätten',
      'Stadtrundgang',
      'Einkaufszentren besuchen',
      'Mittagessen',
      'Genießen der Landschaft',
    ],
    program: [
      'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
      'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
      'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
      'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
    ],
    isInSummer: false,
    isForFamilies: false,
    isInWinter: true,
  ),
  Trip(
    id: 'm4',
    categories: [
      'c2',
      'c1',
    ],
    title: 'Der große See',
    tripType: TripType.activities,
    season: Season.spring,
    imageUrl: 'assets/j.jpg',
    duration: 60,
    activities: [
      'Besuch von archäologischen Stätten',
      'Stadtrundgang',
      'Einkaufszentren besuchen',
      'Mittagessen',
      'Genießen der Landschaft',
    ],
    program: [
      'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et doloremagna aliqua.',
      'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
      'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
      'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
      'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
    ],
    isInSummer: false,
    isForFamilies: true,
    isInWinter: false,
  ),
  Trip(
    id: 'm5',
    categories: [
      'c2',
      'c1',
    ],
    title: 'Die kleinen Seen',
    tripType: TripType.activities,
    season: Season.spring,
    imageUrl: 'assets/k.jpg',
    duration: 15,
    activities: [
      'Besuch von archäologischen Stätten',
      'Stadtrundgang',
      'Einkaufszentren besuchen',
      'Mittagessen',
      'Genießen der Landschaft',
    ],
    program: [
      'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
      'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
      'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
      'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
    ],
    isInSummer: true,
    isForFamilies: false,
    isInWinter: false,
  ),
  Trip(
    id: 'm6',
    categories: [
      'c2',
    ],
    title: 'Der Smaragdsee',
    tripType: TripType.exploration,
    season: Season.summer,
    imageUrl: 'assets/l.jpg',
    duration: 240,
    activities: [
      'Besuch von archäologischen Stätten',
      'Stadtrundgang',
      'Einkaufszentren besuchen',
      'Mittagessen',
      'Genießen der Landschaft',
    ],
    program: [
      'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
      'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
      'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
      'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
    ],
    isInSummer: true,
    isForFamilies: false,
    isInWinter: false,
  ),
  Trip(
    id: 'm7',
    categories: [
      'c3',
    ],
    title: 'Erster Strand',
    tripType: TripType.exploration,
    season: Season.summer,
    imageUrl: 'assets/m.jpg',
    duration: 20,
    activities: [
      'Besuch von archäologischen Stätten',
      'Stadtrundgang',
      'Einkaufszentren besuchen',
      'Mittagessen',
      'Genießen der Landschaft',
    ],
    program: [
      'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
      'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
      'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
      'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
    ],
    isInSummer: true,
    isForFamilies: false,
    isInWinter: false,
  ),
  Trip(
    id: 'm8',
    categories: [
      'c3',
    ],
    title: 'Der große Strand',
    tripType: TripType.recovery,
    season: Season.summer,
    imageUrl: 'assets/n.jpg',
    duration: 35,
    activities: [
      'Besuch von archäologischen Stätten',
      'Stadtrundgang',
      'Einkaufszentren besuchen',
      'Mittagessen',
      'Genießen der Landschaft',
    ],
    program: [
      'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
      'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
      'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
      'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
    ],
    isInSummer: true,
    isForFamilies: false,
    isInWinter: false,
  ),
  Trip(
    id: 'm9',
    categories: [
      'c3',
    ],
    title: 'Felsenstrand',
    tripType: TripType.exploration,
    season: Season.summer,
    imageUrl: 'assets/o.jpg',
    duration: 45,
    activities: [
      'Besuch von archäologischen Stätten',
      'Stadtrundgang',
      'Einkaufszentren besuchen',
      'Mittagessen',
      'Genießen der Landschaft',
    ],
    program: [
      'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
      'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
      'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
      'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
    ],
    isInSummer: true,
    isForFamilies: false,
    isInWinter: false,
  ),
  Trip(
    id: 'm10',
    categories: [
      'c4',
    ],
    title: 'Die Große Wüste',
    tripType: TripType.activities,
    season: Season.winter,
    imageUrl: 'assets/p.jpg',
    duration: 30,
    activities: [
      'Besuch von archäologischen Stätten',
      'Stadtrundgang',
      'Einkaufszentren besuchen',
      'Mittagessen',
      'Genießen der Landschaft',
    ],
    program: [
      'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
      'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
      'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
      'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
    ],
    isInSummer: false,
    isForFamilies: true,
    isInWinter: true,
  ),
  Trip(
    id: 'm11',
    categories: [
      'c4',
      'c1',
    ],
    title: 'Die Westwüste',
    tripType: TripType.activities,
    season: Season.winter,
    imageUrl: 'assets/q.jpg',
    duration: 30,
    activities: [
      'Besuch von archäologischen Stätten',
      'Stadtrundgang',
      'Einkaufszentren besuchen',
      'Mittagessen',
      'Genießen der Landschaft',
    ],
    program: [
      'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
      'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
      'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
      'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
    ],
    isInSummer: false,
    isForFamilies: false,
    isInWinter: true,
  ),
  Trip(
    id: 'm12',
    categories: [
      'c4',
    ],
    title: 'Die Sandwüste',
    tripType: TripType.activities,
    season: Season.winter,
    imageUrl: 'assets/r.jpg',
    duration: 30,
    activities: [
      'Besuch von archäologischen Stätten',
      'Stadtrundgang',
      'Einkaufszentren besuchen',
      'Mittagessen',
      'Genießen der Landschaft',
    ],
    program: [
      'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
      'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
      'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
      'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
    ],
    isInSummer: false,
    isForFamilies: true,
    isInWinter: true,
  ),
  Trip(
    id: 'm13',
    categories: [
      'c5',
    ],
    title: 'Die erste Stadt',
    tripType: TripType.activities,
    season: Season.winter,
    imageUrl: 'assets/s.jpg',
    duration: 30,
    activities: [
      'Besuch von archäologischen Stätten',
      'Stadtrundgang',
      'Einkaufszentren besuchen',
      'Mittagessen',
      'Genießen der Landschaft',
    ],
    program: [
      'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
      'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
      'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
      'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
    ],
    isInSummer: false,
    isForFamilies: true,
    isInWinter: true,
  ),
  Trip(
    id: 'm14',
    categories: [
      'c5',
    ],
    title: 'Die zweite Stadt',
    tripType: TripType.activities,
    season: Season.spring,
    imageUrl: 'assets/t.jpg',
    duration: 30,
    activities: [
      'Besuch von archäologischen Stätten',
      'Stadtrundgang',
      'Einkaufszentren besuchen',
      'Mittagessen',
      'Genießen der Landschaft',
    ],
    program: [
      'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
      'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
      'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
      'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
    ],
    isInSummer: false,
    isForFamilies: true,
    isInWinter: false,
  ),
  Trip(
    id: 'm15',
    categories: [
      'c5',
    ],
    title: 'Die alte Stadt',
    tripType: TripType.activities,
    season: Season.winter,
    imageUrl: 'assets/u.jpg',
    duration: 30,
    activities: [
      'Besuch von archäologischen Stätten',
      'Stadtrundgang',
      'Einkaufszentren besuchen',
      'Mittagessen',
      'Genießen der Landschaft',
    ],
    program: [
      'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
      'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
      'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
      'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
    ],
    isInSummer: false,
    isForFamilies: false,
    isInWinter: true,
  ),
  Trip(
    id: 'm16',
    categories: [
      'c6',
    ],
    title: 'Skisport',
    tripType: TripType.activities,
    season: Season.winter,
    imageUrl: 'assets/v.jpg',
    duration: 30,
    activities: [
      'Besuch von archäologischen Stätten',
      'Stadtrundgang',
      'Einkaufszentren besuchen',
      'Mittagessen',
      'Genießen der Landschaft',
    ],
    program: [
      'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
      'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
      'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
      'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
    ],
    isInSummer: false,
    isForFamilies: false,
    isInWinter: true,
  ),
  Trip(
    id: 'm17',
    categories: [
      'c6',
      'c2',
    ],
    title: 'Fallschirmspringen',
    tripType: TripType.activities,
    season: Season.winter,
    imageUrl: 'assets/w.jpg',
    duration: 30,
    activities: [
      'Fallschirmspringen',
      'Genießen der Aussicht',
      'Mittagessen',
      'Besuch von archäologischen Stätten',
      'Stadtrundgang',
      'Einkaufszentren besuchen',
    ],
    program: [
      'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
      'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
      'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
      'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
    ],
    isInSummer: false,
    isForFamilies: true,
    isInWinter: true,
  ),
];
