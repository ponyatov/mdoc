# Hanzi Writer

https://hanziwriter.org/docs.html

```js
function w() {
  return Math.min(window.innerWidth, window.innerHeight / 2)
}

$(() => {
  var hanzi = HanziWriter.create('hanzi', '草', {
    width: w(),
    height: w(),
    strokeColor: '#333',
    radicalColor: '#334',
    // showOutline: true,
  });
  //
  $('#show').on('click', (e) => {
    hanzi.animateCharacter();
  });
  //
  window.onresize = e => {
    ww = w();
    console.log('resize', ww);
    $('#hanzi').width(ww);
    $('#hanzi').height(ww);
    // $('#hanzi #a').attr('x1',0);
    // $('#hanzi #a').attr('y1',0);
    // $('#hanzi #a').attr('x2',ww);
    // $('#hanzi #a').attr('y2',ww);
  };
  $(window).trigger('resize');
});
```
