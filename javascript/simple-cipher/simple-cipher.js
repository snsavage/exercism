export default class Cipher {
  constructor() {
    this.key = "a"
  }

  encode(string) {
    return string.split().map((e) => {
      if (e === 'a') { return 'd'; }

      return e;
    }).join();
  }
}
