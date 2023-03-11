﻿// CÓDIGO DOS PONTOS DE ESFORÇO POR RODADA PULSANDO

const buttonsPeRodada = document.querySelectorAll(".buttonStatusPeRodada");
const peRodada = document.querySelector("#peRodada");

buttonsPeRodada.forEach((botao) => {
    botao.addEventListener('click', () => {
        peRodada.classList.add('pulsando');
        setTimeout(() => {
            peRodada.classList.remove('pulsando');
        }, 100);
    });
});

// CÓDIGO DA BARRA DE PROGRESSO

const barraPeRodada = document.getElementById('barraPeRodada');
let maxPeRodada = 2;
let porcentagemBarraPeRodada = 100;
barraPeRodada.innerHTML = `${(porcentagemBarraPeRodada / 100) * maxPeRodada}/${maxPeRodada}`;

function setProgressPeRodada(valor) {
    barraPeRodada.style.width = valor + '%';
    if (valor >= 51) {
        barraPeRodada.classList.add('green');
        barraPeRodada.classList.remove('yellow', 'red');
        console.log('valor >>>>', valor)
    } else if (valor >= 11) {
        barraPeRodada.classList.add('yellow');
        barraPeRodada.classList.remove('green', 'red');
        console.log('valor >>>>', valor)
    } else if (valor >= 1) {
        barraPeRodada.classList.add('red');
        barraPeRodada.classList.remove('green', 'yellow');
        console.log('valor >>>>', valor)
    } else {
        barraPeRodada.classList.remove('green', 'yellow', 'red');
        console.log('valor >>>>', valor)
    }
}

setProgressPeRodada(100);

// CÓDIGO DOS BOTÕES PARA DIMINUIR/AUMENTAR A BARRA DE PROGRESSO

const peRodadaMinusOne = document.getElementById("peRodadaMinusOne");
peRodadaMinusOne.addEventListener("click", () => {
    if (Math.round(porcentagemBarraPeRodada) > 0) {
        porcentagemBarraPeRodada -= (100 / maxPeRodada); // 5%
        setProgressPeRodada(porcentagemBarraPeRodada);
        barraPeRodada.innerHTML = `${Math.round((porcentagemBarraPeRodada / 100) * maxPeRodada)}/${maxPeRodada}`;
    }
});

const peRodadaMinusFive = document.getElementById("peRodadaMinusFive");
peRodadaMinusFive.addEventListener("click", () => {
    // se % for maior ou igual os 25% q ele vai tirar
    if (Math.round(porcentagemBarraPeRodada) >= ((100 / (maxPeRodada / 5)))) {
        porcentagemBarraPeRodada -= (100 / (maxPeRodada / 5)); // 25%
        setProgressPeRodada(porcentagemBarraPeRodada);
        barraPeRodada.innerHTML = `${Math.round((porcentagemBarraPeRodada / 100) * maxPeRodada)}/${maxPeRodada}`;
    }
});

const peRodadaMinusTen = document.getElementById("peRodadaMinusTen");
peRodadaMinusTen.addEventListener("click", () => {
    if (Math.round(porcentagemBarraPeRodada) >= ((100 / (maxPeRodada / 10)))) {
        porcentagemBarraPeRodada -= (100 / (maxPeRodada / 10));
        setProgressPeRodada(porcentagemBarraPeRodada);
        barraPeRodada.innerHTML = `${Math.round((porcentagemBarraPeRodada / 100) * maxPeRodada)}/${maxPeRodada}`;
    }
});

const peRodadaPlusOne = document.getElementById("peRodadaPlusOne");
peRodadaPlusOne.addEventListener("click", () => {
    if (Math.round(porcentagemBarraPeRodada) < 100) {
        porcentagemBarraPeRodada += (100 / maxPeRodada); // 5%
        setProgressPeRodada(porcentagemBarraPeRodada);
        barraPeRodada.innerHTML = `${Math.round((porcentagemBarraPeRodada / 100) * maxPeRodada)}/${maxPeRodada}`;
    }
});

const peRodadaPlusFive = document.getElementById("peRodadaPlusFive");
peRodadaPlusFive.addEventListener("click", () => {
    // se % for menor ou igual q 100 menos os 25% q ele vai tirar, com maxPeRodada 20, if % < 80 (100 - 20)
    if (Math.round(porcentagemBarraPeRodada) <= 100 - (100 / (maxPeRodada / 5))) {
        porcentagemBarraPeRodada += (100 / (maxPeRodada / 5)); // 25%
        setProgressPeRodada(porcentagemBarraPeRodada);
        barraPeRodada.innerHTML = `${Math.round((porcentagemBarraPeRodada / 100) * maxPeRodada)}/${maxPeRodada}`;
    }
});

const peRodadaPlusTen = document.getElementById("peRodadaPlusTen");
peRodadaPlusTen.addEventListener("click", () => {
    if (Math.round(porcentagemBarraPeRodada) <= 100 - (100 / (maxPeRodada / 10))) {
        porcentagemBarraPeRodada += (100 / (maxPeRodada / 10));
        setProgressPeRodada(porcentagemBarraPeRodada);
        barraPeRodada.innerHTML = `${Math.round((porcentagemBarraPeRodada / 100) * maxPeRodada)}/${maxPeRodada}`;
    }
});