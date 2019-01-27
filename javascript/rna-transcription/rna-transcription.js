export default class Transcriptor {
  constructor() {
    this.mapping = {
      'C': 'G',
      'G': 'C',
      'A': 'U',
      'T': 'A',
    };
  };

  toRna(dna) {
    return dna.split("").map(e => {
      const rnaValue = this.mapping[e];

      if (!rnaValue) { throw new Error('Invalid input DNA.'); };

      return rnaValue;
    }).join("");
  }
}
