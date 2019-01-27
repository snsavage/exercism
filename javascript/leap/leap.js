export default class Leap {
  constructor (year) {
    this.year = year;
  }

  isLeap() {
    const { year } = this;
    const leap = (year % 4 === 0);
    const century = (year % 100 === 0);
    const fourHundred = (year % 400 === 0);

    return (leap && (!century || fourHundred));
  }
}
