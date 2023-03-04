class Question {
  Question? model;
  String? varsityName, Questions, image, Semister, year, board, subjects;
  Question(
      {this.model,
      this.subjects,
      this.Questions,
      this.Semister,
      this.image,
      this.board,
      this.varsityName,
      this.year});
}

List<Question> qlist = [
  Question(Questions: 'PSC'),
  Question(Questions: 'JSE'),
  Question(Questions: 'SSC'),
  Question(Questions: 'HSC'),
  Question(Questions: 'University Admision'),
  Question(Questions: 'University Semister'),
  Question(Questions: 'Politecnic'),
  Question(Questions: 'Doctor Admision'),
  Question(Questions: 'Doctori Semister'),
  Question(Questions: 'Dental Admision'),
  Question(Questions: 'Dental Semister'),
  Question(Questions: 'Primary Nibondon'),
  Question(Questions: 'Merin Admision'),
  Question(Questions: 'Merin Semister'),
];

List<Question> bordtype = [
  Question(
      board: 'Barishal',
      year: '1990',
      Semister: 'Class Five',
      image:
          'https://www.cazoommaths.com/wp-content/uploads/2017/07/Algebra.-Equations.-Solving-Quadratic-Equations-B-1.jpg',
      subjects: 'bangla'),
  Question(
      board: 'Barishal',
      year: '1990',
      Semister: 'Class Five',
      image:
          'https://www.cazoommaths.com/wp-content/uploads/2017/07/Algebra.-Equations.-Solving-Quadratic-Equations-B-1.jpg',
      subjects: 'Englai'),
  Question(
      board: 'Barishal',
      year: '1990',
      Semister: 'Class Five',
      image:
          'https://www.cazoommaths.com/wp-content/uploads/2017/07/Algebra.-Equations.-Solving-Quadratic-Equations-B-1.jpg',
      subjects: 'MAth'),
  Question(
      board: 'Barishal',
      year: '1990',
      Semister: 'Class Five',
      image:
          'https://www.cazoommaths.com/wp-content/uploads/2017/07/Algebra.-Equations.-Solving-Quadratic-Equations-B-1.jpg',
      subjects: 'Etics'),
];
