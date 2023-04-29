import 'package:flutter/cupertino.dart';

class Data {
  var chat = {
    0: ["Marco", "images/marco.jpg", "I,m a footballer", "5:40 pm"],
    1: ["Billi poocha", "images/homeimg.jpeg", "cat world", "5:30 pm"],
    2: ["Dhanvi", "images/dhanvi.jpeg", "I'm,Techy", "Yesterday"],
    4: ["Shazil", "images/shazil.jpeg", "Flying", "Yesterday"],
    5: ["Hisham", "images/hisham.jpeg", "Coffe", "04/26/23"],
    6: ["Ridwan", "images/ridu.jpeg", "Drag race", "04/22/23"],
    3: ["Fayiz", "images/fayis.jpeg", "Exploring", "04/18/23"],
    7: ["Badru", "images/badru.jpeg", "world is hand ", "04/13/23"],
    8: ["Shad", "images/shad.jpeg", "Nothing", "04/08/23"],
  };

  Map<int, List<dynamic>> statusList = {
    0: ["Marco", "images/marco.jpg", 2.0, 4.5, "10 minutes ago", false],
    1: [
      "Billi poocha",
      "images/homeimg.jpeg",
      3.0,
      4.5,
      "43 minutes ago",
      false
    ],
    2: ["Dhanvi", "images/dhanvi.jpeg", 1.0, 0.0, "Yesterday 11:39 pm", false],
    3: ["Hisham", "images/hisham.jpeg", 4.0, 4.5, "Yesterday 10:15 pm", false],
    4: ["Shazil", "images/shazil.jpeg", 2.0, 4.5, "Yesterday 9:50 pm", false],
    5: ["Ridwan", "images/ridu.jpeg", 5.0, 4.5, "Yesterday 9:08 pm", false],
    6: ["Fayiz", "images/fayis.jpeg", 3.0, 4.5, "Yesterday 8:17 pm", false],
    7: ["Badru", "images/badru.jpeg", 1.0, 0.0, "Yesterday 7:41 pm", false],
    8: ["Shad", "images/shad.jpeg", 2.0, 4.5, "Yesterday 6:08 pm", false],
  };

  Map<int, List<dynamic>> call = {
    0: ["Marco", "images/marco.jpg", 2, false, false, '2 Minutes', false],
    1: [
      "Billi poocha",
      "images/homeimg.jpeg",
      0,
      false,
      true,
      '40 Minutes',
      false
    ],
    2: ["Dhanvi", "images/dhanvi.jpeg", 0, true, true, '1 hour', false],
    3: ["Hisham", "images/hisham.jpeg", 0, false, false, '2 hour', false],
    4: [
      "Shazil",
      "images/shazil.jpeg",
      2,
      false,
      false,
      "April 25, 8:21 PM",
      false
    ],
    5: [
      "Ridwan",
      "images/ridu.jpeg",
      0,
      true,
      true,
      "April 25, 6:08 PM",
      false
    ],
    6: [
      "Fayiz",
      "images/fayis.jpeg",
      2,
      false,
      false,
      "April 23, 2:33 PM",
      false
    ],
    7: [
      "Badru",
      "images/badru.jpeg",
      0,
      false,
      false,
      "April 20, 10:17 AM",
      false
    ],
    8: ["Shad", "images/shad.jpeg", 0, true, true, "April 16, 7:13 pm", false],
  };
  Map<int, List<dynamic>> chatMsgs = {
    0: ['hi', true],
    1: ['hi', false],
    2: ['i need a job', true],
    3: ['don\'t woory man i will look a job for you', false],
    4: ['oh thank you man', true],
  };
}
