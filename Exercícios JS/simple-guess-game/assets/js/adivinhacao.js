let count = 0;
let bot = document.getElementById ('botao')
bot.addEventListener ('click', clique)
let numale = Math.floor(Math.random() * 100) + 1
function clique() {
    
    let num = Number(document.getElementById ('player').value);
    let res = document.getElementById ('resposta')

if (num == numale) {res.innerHTML = "Vc ganhou"}
else {res.innerHTML = "Vc perdeu"}

}

let dic = document.getElementById ('botao2');
dic.addEventListener ('click', clique2)

const here = document.querySelector('#body');
let p = document.createElement ('p');
here.appendChild(p);

let res2 = document.getElementById ('res2');

function clique2 (){ 
        if (count <= 2){
        let dica1 = Number(document.getElementById ('dica').value);
        count++
            if (dica1 > numale) {res2.innerText = 'O número é menor';
            } else if (dica1 < numale) {res2.innerHTML = 'O número é maior';
            } else {res2.innerHTML = 'vc acertou'}
    } else {
        res2.innerText = '';
        p.textContent = '';
        p.textContent = 'Você usou todas as dicas';
        p.style.color = 'red';
    }
}