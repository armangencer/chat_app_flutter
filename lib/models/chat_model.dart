class Chat {
  final String name, lastMessage, image, time;
  final bool isActive;

  Chat(this.name, this.lastMessage, this.image, this.time, this.isActive);
}

List<Chat> chatsData = [
  Chat('Arman Gençer', 'Umarım Görevlerini yerine getirmişsindir',
      'assets/images/user.png', '2m Ago', true),
  Chat('Alper Düzgün', 'You are the king', 'assets/images/user_2.png', '1m Ago',
      true),
  Chat('Fatih Can Yazıcı', 'you are a complete athleter',
      'assets/images/user_3.png', '2m Ago', false),
  Chat('Nurcan', 'You are super', 'assets/images/user_4.png', '1h Ago', false),
  Chat('Tuana', 'Seninle ilgileneceğim', 'assets/images/user_5.png', '2m Ago',
      false),
  Chat('Esen', 'Ne yapabileceğin hakkında konuşacağız.',
      'assets/images/user_6.png', '2m Ago', false),
  Chat('Seçkin', 'Ne yapabileceğin hakkında konuşacağız.',
      'assets/images/user_7.png', '2m Ago', false),
  Chat('Onur', 'Ne yapabileceğin hakkında konuşacağız.',
      'assets/images/user_8.png', '2m Ago', false),
  Chat('Barış', 'Ne yapabileceğin hakkında konuşacağız.',
      'assets/images/user_9.png', '2m Ago', false),
];
