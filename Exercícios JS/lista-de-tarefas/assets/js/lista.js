let ordem = 1;
var maine = document.getElementById ('princ');

let input = document.getElementById ('adc');
let bot = document.getElementById ('bot');

input.addEventListener('keypress', function(e){
    if (e.key === 'Enter' && input.value != '') {
        bot.click();
    }
})


function add() {
   let input1 = document.getElementById ('adc').value.toUpperCase();
   document.getElementById ('adc').value='';

   if (input1 != ''){
        let paragrafo = document.createElement('p');
        let quebra = document.createElement('br');

        paragrafo.textContent = `${ordem})  ${input1}`;

        maine.appendChild(quebra);
        maine.appendChild(paragrafo);
        

        ordem++

  
    }
}


