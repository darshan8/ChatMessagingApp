class Chat {
  final String name, lastMessage, image, time;
  final bool isOnline;

  Chat({
    this.name,
    this.lastMessage,
    this.image,
    this.time,
    this.isOnline,
  });
}

List chatsData = [
  Chat(
    name: "Iron Man",
    lastMessage: "Hope you are doing well...",
    image: "assets/images/ironman.jpeg",
    time: "3m ago",
    isOnline: true,
  ),
  Chat(
    name: "Black Widow",
    lastMessage: "Hello Abdullah! I am...",
    image: "assets/images/black-widow.jpg",
    time: "8m ago",
    isOnline: true,
  ),
  Chat(
    name: "Spiderman",
    lastMessage: "Do you have update...",
    image: "assets/images/spiderman.jpg",
    time: "5d ago",
    isOnline: false,
  ),
  Chat(
    name: "Thor",
    lastMessage: "You’re welcome :)",
    image: "assets/images/thor.png",
    time: "5d ago",
    isOnline: true,
  ),
  Chat(
    name: "Albert Flores",
    lastMessage: "Thanks",
    image: "assets/images/user_5.png",
    time: "6d ago",
    isOnline: false,
  ),
  Chat(
    name: "Jenny Wilson",
    lastMessage: "Hope you are doing well...",
    image: "assets/images/user.png",
    time: "3m ago",
    isOnline: false,
  ),
  Chat(
    name: "Esther Howard",
    lastMessage: "Hello Abdullah! I am...",
    image: "assets/images/user_2.png",
    time: "8m ago",
    isOnline: true,
  ),
  Chat(
    name: "Ralph Edwards",
    lastMessage: "Do you have update...",
    image: "assets/images/user_3.png",
    time: "5d ago",
    isOnline: false,
  ),
];
