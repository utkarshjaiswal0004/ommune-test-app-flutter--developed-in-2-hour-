import 'package:flutter/material.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      width: MediaQuery.of(context).size.width,
      child: const SingleChildScrollView(
        scrollDirection: Axis.vertical,
        physics: AlwaysScrollableScrollPhysics(),
        child: Column(
          children: [
            SizedBox(
              height: 20,
            ),
            WelcomeUser(),
            // welcome ends here
            SizedBox(
              height: 20,
            ),

            InterviewCards(),
            SizedBox(
              height: 20,
            ),

            Column(
              children: [
                InterviewsToday(),
                SizedBox(
                  height: 20,
                ),
                InterviewsPending(),
              ],
            )
          ],
        ),
      ),
    );
  }
}

class InterviewsPending extends StatelessWidget {
  const InterviewsPending({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'UNATTENDED TASKS',
                  style: TextStyle(color: Colors.grey[500], fontSize: 10),
                ),
                const Text(
                  'Pending Tasks',
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                      letterSpacing: 4),
                ),
              ],
            ),
            GestureDetector(
              onTap: () {},
              child: const Text(
                'See all ->',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
              ),
            ),
          ],
        ),
        const SizedBox(
          height: 10,
        ),
        SingleChildScrollView(
          scrollDirection: Axis.vertical,
          physics: const AlwaysScrollableScrollPhysics(),
          child: Column(
            children: [
              CustomCard(
                imageUrl: 'assets/images/img3.png',
                name: 'Robert Fox',
                position: 'Lead Software Developer',
                date: '14 March 2023',
                time: '3h 05m',
                interview_type: 'Face To Face Meet',
                interview_in_time: '60 min',
                interview_at_time: '5:40 pm',
                onPressed: () {},
              ),
            ],
          ),
        )
      ],
    );
  }
}

class InterviewsToday extends StatelessWidget {
  const InterviewsToday({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                Text(
                  'INTERVIEWS FOR THE DAY',
                  style: TextStyle(color: Colors.grey[500], fontSize: 10),
                ),
                const Text(
                  'Interviews',
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                      letterSpacing: 4),
                ),
              ],
            ),
            GestureDetector(
              onTap: () {},
              child: const Text(
                'See all ->',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
              ),
            ),
          ],
        ),
        const SizedBox(
          height: 10,
        ),
        SingleChildScrollView(
          child: Column(children: [
            CustomCard(
              imageUrl: 'assets/images/img1.png',
              name: 'Jane Cooper',
              position: 'Lead Software Developer',
              date: '14 March 2023',
              time: '1h 15m',
              interview_type: 'Telephonic Interview',
              interview_in_time: '30 min',
              interview_at_time: '3:50 pm',
              onPressed: () {},
            ),
            CustomCard(
              imageUrl: 'assets/images/img2.png',
              name: 'Jenny Wilson',
              position: 'Lead Software Developer',
              date: '14 March 2023',
              time: '2h 05m',
              interview_type: 'Technical Interview',
              interview_in_time: '45 min',
              interview_at_time: '4:40 pm',
              onPressed: () {},
            ),
            CustomCard(
              imageUrl: 'assets/images/img3.png',
              name: 'Robert Fox',
              position: 'Lead Software Developer',
              date: '14 March 2023',
              time: '3h 05m',
              interview_type: 'Face To Face Meet',
              interview_in_time: '60 min',
              interview_at_time: '5:40 pm',
              onPressed: () {},
            ),
          ]),
        )
      ],
    );
  }
}

class InterviewCards extends StatelessWidget {
  const InterviewCards({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      physics: const AlwaysScrollableScrollPhysics(),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Container(
            height: 120,
            width: 240,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(
                  20), // Adjust the value to change the curve amount
              color: Colors.blueAccent[700],
            ),
            child: Stack(children: [
              Padding(
                padding: const EdgeInsets.only(left: 28.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Card(
                      color: Colors.white,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 6, vertical: 2),
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            CircleAvatar(
                              backgroundColor: Colors.grey[400],
                              radius: 10,
                              child: const Text('5'),
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            const Text('Interview'),
                          ],
                        ),
                      ),
                    ),
                    const Text(
                      '  Interviews',
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.w400),
                    ),
                    const Text(
                      '  Today',
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.w400),
                    ),
                  ],
                ),
              ),
              Positioned(
                  right: 0,
                  bottom: 0,
                  child: Image.asset(
                    'assets/images/Obj.png',
                    fit: BoxFit.fitHeight,
                    height: 100,
                  ))
            ]),
          ),
          const SizedBox(
            width: 10,
          ),
          Container(
            height: 120,
            width: 240,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(
                  20), // Adjust the value to change the curve amount
              color: Colors.black,
            ),
            child: Stack(children: [
              Padding(
                padding: const EdgeInsets.only(left: 28.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Card(
                      color: Colors.white,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 6, vertical: 2),
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            CircleAvatar(
                              backgroundColor: Colors.grey[400],
                              radius: 10,
                              child: const Text('15'),
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            const Text('Candidates'),
                          ],
                        ),
                      ),
                    ),
                    const Text(
                      '  Total Shortlisted',
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.w400),
                    ),
                    const Text(
                      '  Candidates',
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.w400),
                    ),
                  ],
                ),
              ),
              Positioned(
                  right: 0,
                  bottom: 0,
                  child: Image.asset(
                    'assets/images/Obj.png',
                    fit: BoxFit.fitHeight,
                    height: 100,
                  ))
            ]),
          ),
        ],
      ),
    );
  }
}

class WelcomeUser extends StatelessWidget {
  const WelcomeUser({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        //profile image starts here
        CircleAvatar(
          backgroundColor: Colors.blue,
          radius: 21,
          child: ClipOval(
            child: Image.asset(
              'assets/images/img4.png',
              height: 40,
              width: 40,
              fit: BoxFit.cover,
            ),
          ),
        ), // profile image ends here
        const SizedBox(
          width: 10,
        ),
        const Column(
          children: [
            Text(
              '👋 Welcome, ',
              style:
                  TextStyle(color: Colors.black, fontWeight: FontWeight.w700),
            ),
            Text('Harsh'),
          ],
        ),
      ],
    );
  }
}

class CustomCard extends StatelessWidget {
  final String imageUrl;
  final String name;
  final String position;
  final String date;
  final String time;
  final VoidCallback onPressed;
  final String interview_type;
  final String interview_in_time;
  final String interview_at_time;

  const CustomCard({
    required this.imageUrl,
    required this.name,
    required this.position,
    required this.date,
    required this.time,
    required this.onPressed,
    required this.interview_type,
    required this.interview_in_time,
    required this.interview_at_time,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.all(8),
      color: Colors.white,
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 2),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  padding: const EdgeInsets.all(12),
                  child: Row(
                    children: [
                      Image.asset(imageUrl),
                      const SizedBox(width: 10),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            name,
                            style: const TextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize: 18,
                            ),
                          ),
                          Row(
                            children: [
                              Icon(
                                Icons.cases_rounded,
                                size: 10,
                                color: Colors.grey[600],
                              ),
                              const SizedBox(width: 6),
                              RichText(
                                text: TextSpan(
                                  style: const TextStyle(
                                    fontSize: 10.0,
                                    color: Colors.black,
                                  ),
                                  children: <TextSpan>[
                                    TextSpan(
                                      text: position,
                                      style: const TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: Colors.grey,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(height: 5),
                          Row(
                            children: [
                              Icon(
                                Icons.calendar_today,
                                size: 10,
                                color: Colors.grey[600],
                              ),
                              const SizedBox(width: 6),
                              RichText(
                                text: TextSpan(
                                  style: const TextStyle(
                                    fontSize: 10.0,
                                    color: Colors.black,
                                  ),
                                  children: <TextSpan>[
                                    TextSpan(
                                      text: date,
                                      style: const TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: Colors.grey,
                                      ),
                                    ),
                                    TextSpan(
                                      text: '. In $time',
                                      style: TextStyle(
                                        fontStyle: FontStyle.normal,
                                        color: Colors.pink[400],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          )
                        ],
                      )
                    ],
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.indigo[50],
                  ),
                  child: IconButton(
                    onPressed: onPressed,
                    icon: const Icon(Icons.arrow_right_alt_sharp),
                  ),
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 2),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Card(
                  elevation: 0,
                  color: Colors.blue[50],
                  child: Padding(
                    padding:
                        const EdgeInsets.symmetric(vertical: 2, horizontal: 6),
                    child: Text(
                      interview_type,
                      style: const TextStyle(color: Colors.blue, fontSize: 12),
                    ),
                  ),
                ),
                Card(
                  elevation: 0,
                  color: Colors.pink[50],
                  child: Padding(
                    padding:
                        const EdgeInsets.symmetric(vertical: 2, horizontal: 6),
                    child: Text(
                      interview_in_time,
                      style: TextStyle(color: Colors.pink[400], fontSize: 12),
                    ),
                  ),
                ),
                Card(
                  elevation: 0,
                  color: Colors.pink[50],
                  child: Padding(
                    padding:
                        const EdgeInsets.symmetric(vertical: 2, horizontal: 6),
                    child: Text(
                      interview_at_time,
                      style: TextStyle(color: Colors.pink[400], fontSize: 12),
                    ),
                  ),
                ),
                Card(
                  elevation: 0,
                  color: Colors.green[400],
                  child: const Padding(
                    padding: EdgeInsets.symmetric(vertical: 2, horizontal: 12),
                    child: Row(
                      children: [
                        Icon(
                          Icons.call,
                          size: 12,
                          color: Colors.white,
                        ),
                        SizedBox(
                          width: 2,
                        ),
                        Text(
                          'Call',
                          style: TextStyle(color: Colors.white, fontSize: 12),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
