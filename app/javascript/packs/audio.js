import * as Tone from 'tone'

function startAudio(url) {
  const player = new Tone.Player(url).toDestination();
  player.autostart = true;
}

document.addEventListener("DOMContentLoaded", () => {
  const bts = document.getElementsByClassName('btn');
  [...bts].forEach(bt=>{
    bt.addEventListener('click',(e)=>{
      const audio = bt.dataset.audioUrl
      startAudio(audio)
    });
  });
})
