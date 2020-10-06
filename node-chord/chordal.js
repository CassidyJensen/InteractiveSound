const maxApi = require("max-api");
const tonal = require("tonal");
const Detect = require("tonal-detect");

maxApi.outlet("Hello World");

maxApi.addHandler("challenge", () => {
  maxApi.outlet("Come at me Bro!");
});

maxApi.addHandler("detect", (...midiNotes) => { //... allows multiple midinotes
  const namedNotes = midiNotes.map(tonal.Note.fromMidi);
  const chords = Detect.chord(namedNotes);
  if (chords && chords.length > 0) {
    maxApi.outlet("chords", ...chords);
  }
  else{
    maxApi.outlet("chords", "unknown");
  }
});
