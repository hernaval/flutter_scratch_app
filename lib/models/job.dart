class Job {
  String company;
  String logoUrl;
  bool isMark;
  String title;
  String location;
  String time;
  List<String> req;

  Job(this.company, this.logoUrl, this.isMark, this.title, this.location,
      this.time, this.req);

  static List<Job> generateJobs() {
    return [
        Job(
            "Google LLC,",
            "assets/images/google_logo.png",
            false,
            "Principle Product Manager",
            "417 Marion, New York\nUnited States",
            "Full Time",
          [
            "Lorem ipsum dolor sit amet"
          ]
        ),
        Job(
          "Airbnb inc,",
          "assets/images/airbnb_logo.png",
          false,
          "Principle Product Manager",
          "417 Marion, New York\nUnited States",
          "Full Time",
          [
            "Lorem ipsum dolor sit amet"
          ]
        )
    ];
  }
}