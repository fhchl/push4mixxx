# Midi scripting

source: https://github.com/mixxxdj/mixxx/wiki/Midi-Scripting

## Receiving data from Push

An XML file configures which midi message is sent to which Javascript function. For AbletonPush, this is the `AbletonPush.midiHandler`. It receives the 5 arguments `channel, control, value, status, group` of which the arguments at the end can be left out. In the given script, the midiHandler is only defined with the first 4 arguments.

Most Midi messages are 3 bytes long and the above arguments correspond to those messages as

1. MIDI channel (0x00 = Channel 1..0x0F = Channel 16,)
2. Control/note number (byte 2)
3. Value of the control (byte 3)
4. MIDI status byte (byte 1)


## Interacting with Mixx

The state of Mixxx can be queried and changed using 4 functions:

```js
engine.getParameter(string group, string key);
engine.setParameter(string group, string key, double newValue);
engine.getValue(string group, string key);
engine.setValue(string group, string key, double newValue);
```

Group and key arguments are all defined [here](https://manual.mixxx.org/2.3/en/chapters/appendix/mixxx_controls.html).

The Push mapping does not seem to use these functions and instead uses the [Components API](https://github.com/mixxxdj/mixxx/wiki/Components%20JS).

## Tips

Watch midi input with

    amidi -p hw:3,0,1 -d

Log midi controller with

    mixxx --controllerDebug

## Todo's

- [ ] map filter knobs, e.g. by using the "add effect" button as a shift for activating the filter knobs with labels