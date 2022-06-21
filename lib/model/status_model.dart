class StatusModel {
  final String name;
  final String time;
  final String pic;

  StatusModel(this.name, this.time, this.pic);
}

List<StatusModel> StatusData = [
  new StatusModel(
      'Karthik', '10.30 AM', 'https://randomuser.me/api/portraits/men/1.jpg'),
  new StatusModel(
      'Gokul', 'Yesterday', 'https://randomuser.me/api/portraits/men/2.jpg'),
  new StatusModel(
      'Ragul', '12:30 AM', 'https://randomuser.me/api/portraits/men/3.jpg'),
  new StatusModel(
      'Arun', '1:00 AM', 'https://randomuser.me/api/portraits/men/4.jpg'),
  new StatusModel(
      'Mani', '9.30 AM', 'https://randomuser.me/api/portraits/men/5.jpg'),
  new StatusModel(
      'Mathu', 'Yesterday', 'https://randomuser.me/api/portraits/men/6.jpg'),
  new StatusModel(
      'Parthi', 'Yesterday', 'https://randomuser.me/api/portraits/men/7.jpg'),
];
