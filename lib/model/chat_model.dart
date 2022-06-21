class ChatModel {
  final String name;
  final String msg;
  final String time;
  final String pic;

  ChatModel(this.name, this.msg, this.time, this.pic);
}

List<ChatModel> chatsData = [
  new ChatModel('Karthik', 'Welcome to ChatApp', '10.30 PM',
      'https://avatars.githubusercontent.com/u/97900968?s=96&v=4'),
  new ChatModel('Gokul', 'Welcome to ChatApp', '10.30 PM',
      'https://randomuser.me/api/portraits/men/1.jpg'),
  new ChatModel('Arun', 'Welcome to ChatApp', '10.30 PM',
      'https://randomuser.me/api/portraits/men/2.jpg'),
  new ChatModel('Kishore', 'Welcome to ChatApp', '10.30 PM',
      'https://randomuser.me/api/portraits/men/3.jpg'),
  new ChatModel('Mani', 'Welcome to ChatApp', '10.30 PM',
      'https://randomuser.me/api/portraits/men/4.jpg'),
  new ChatModel('Mathu', 'Welcome to ChatApp', '10.30 PM',
      'https://randomuser.me/api/portraits/men/5.jpg'),
  new ChatModel('Parthi', 'Welcome to ChatApp', '10.30 PM',
      'https://randomuser.me/api/portraits/men/6.jpg'),
  new ChatModel('Mani VK', 'Welcome to ChatApp', '10.30 PM',
      'https://randomuser.me/api/portraits/men/7.jpg'),
];
