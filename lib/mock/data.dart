import 'package:instagram_clone/model/Commnet.dart';
import 'package:instagram_clone/model/Post.dart';
import 'package:instagram_clone/model/Story.dart';
import 'package:instagram_clone/model/User.dart';

User loggedUser = User(
    id: 1, name: 'John Doe', imageUrl: 'https://picsum.photos/400/400?q=100');

UserProfile userProfile = UserProfile(
  userId: 1,
  description: 'about me',
  name: loggedUser.name,
  followers: 123,
  following: 223,
  postsIds: [2, 3, 4, 5, 6, 7],
);

List<User> users = [
  User(
      id: 2, name: 'john doe 2', imageUrl: 'https://picsum.photos/200/300?q=2'),
  User(
      id: 3, name: 'john doe 3', imageUrl: 'https://picsum.photos/200/300?q=3'),
  User(
      id: 4, name: 'john doe 4', imageUrl: 'https://picsum.photos/200/300?q=4'),
  User(
      id: 5, name: 'john doe 5', imageUrl: 'https://picsum.photos/200/300?q=5'),
  User(
      id: 6, name: 'john doe 6', imageUrl: 'https://picsum.photos/200/300?q=6'),
  User(
      id: 7, name: 'john doe 7', imageUrl: 'https://picsum.photos/200/300?q=7'),
];

List<Story> stories = [
  Story(
    userId: 2,
    imageUrl: 'https://picsum.photos/200/300?q=2',
    description: 'description',
    likes: 123,
    comments: [
      Comment(
        userId: 3,
        time: '1h',
        message: 'comment message',
      )
    ],
    date: '1 day ago',
  ),
  Story(
    userId: 3,
    imageUrl: 'https://picsum.photos/200/300?q=3',
    description: 'description',
    likes: 123,
    comments: [
      Comment(
        userId: 2,
        time: '1h',
        message: 'comment message',
      )
    ],
    date: '1 day ago',
  ),
  Story(
    userId: 4,
    imageUrl: 'https://picsum.photos/200/300?q=4',
    description: 'description',
    likes: 123,
    comments: [
      Comment(
        userId: 2,
        time: '1h',
        message: 'comment message',
      )
    ],
    date: '1 day ago',
  ),
  Story(
    userId: 5,
    imageUrl: 'https://picsum.photos/200/300?q=5',
    description: 'description',
    likes: 123,
    comments: [
      Comment(
        userId: 2,
        time: '1h',
        message: 'comment message',
      )
    ],
    date: '1 day ago',
  ),
  Story(
    userId: 6,
    imageUrl: 'https://picsum.photos/200/300?q=6',
    description: 'description',
    likes: 123,
    comments: [
      Comment(
        userId: 2,
        time: '1h',
        message: 'comment message',
      )
    ],
    date: '1 day ago',
  ),
  Story(
    userId: 6,
    imageUrl: 'https://picsum.photos/200/300?q=6',
    description: 'description',
    likes: 123,
    comments: [
      Comment(
        userId: 2,
        time: '1h',
        message: 'comment message',
      )
    ],
    date: '1 day ago',
  ),
];

List<Post> posts = [
  Post(
    id: 3,
    userId: 3,
    imageUrl: 'https://picsum.photos/200/300?q=3',
    description: 'description',
    likes: 123,
    comments: [
      Comment(
        userId: 2,
        time: '1h',
        message: 'comment message',
      )
    ],
    date: '1 day ago',
  ),
  Post(
    id: 2,
    userId: 2,
    imageUrl: 'https://picsum.photos/200/300?q=2',
    description: 'description',
    likes: 123,
    comments: [
      Comment(
        userId: 2,
        time: '1h',
        message: 'comment message',
      )
    ],
    date: '1 day ago',
  ),
  Post(
    id: 4,
    userId: 4,
    imageUrl: 'https://picsum.photos/200/300?q=4',
    description: 'description',
    likes: 123,
    comments: [
      Comment(
        userId: 2,
        time: '1h',
        message: 'comment message',
      )
    ],
    date: '1 day ago',
  ),
  Post(
    id: 5,
    userId: 5,
    imageUrl: 'https://picsum.photos/200/300?q=5',
    description: 'description',
    likes: 123,
    comments: [
      Comment(
        userId: 2,
        time: '1h',
        message: 'comment message',
      )
    ],
    date: '1 day ago',
  ),
  Post(
    id: 6,
    userId: 6,
    imageUrl: 'https://picsum.photos/200/300?q=6',
    description: 'description',
    likes: 123,
    comments: [
      Comment(
        userId: 2,
        time: '1h',
        message: 'comment message',
      )
    ],
    date: '1 day ago',
  ),
  Post(
    id: 7,
    userId: 7,
    imageUrl: 'https://picsum.photos/200/300?q=7',
    description: 'description',
    likes: 123,
    comments: [
      Comment(
        userId: 2,
        time: '1h',
        message: 'comment message',
      )
    ],
    date: '1 day ago',
  ),
  Post(
    id: 2,
    userId: 2,
    imageUrl: 'https://picsum.photos/200/300?q=9',
    description: 'description',
    likes: 123,
    comments: [
      Comment(
        userId: 2,
        time: '1h',
        message: 'comment message',
      )
    ],
    date: '1 day ago',
  ),
];
