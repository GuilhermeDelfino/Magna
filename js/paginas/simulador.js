var valor = 0;


function calcular() {
    var hora = Number(Hora_1.value);
    var FluxoPraça = Number(Fluxo.value * 0.7);
    var UsamPraça = Number(Assentos.value * 2);
    var PicoPraça = FluxoPraça * 0.10;
    var Sem_Lugar_Praça = PicoPraça - UsamPraça;
    var DesistePraça = (Sem_Lugar_Praça * 0.84).toFixed(0);
    var PrejuPraça = ((DesistePraça * 30) * hora);
    var porcentagem = (Sem_Lugar_Praça) / PicoPraça * 100;
    valor = PrejuPraça;


    if (Hora_1.value == "" || Fluxo.value == "" || Assentos.value == "") {
        alert("Por favor, preencha todos os campos. ");
    } else {

        H1_preju.innerHTML = PrejuPraça.toLocaleString('pt-br', {
            style: 'currency',
            currency: 'BRL'
        });
        H1_preju_porc.innerHTML = `${porcentagem.toFixed(2)}%`;
    }
    H2_preju.innerHTML = ` Total do Prejuizo Diario.`;
}

function calcular_Anual() {

    calcular()
    var anual = valor * 365;
    
       
        H1_preju.innerHTML = anual.toLocaleString('pt-br', {
            style: 'currency',
            currency: 'BRL'
        });
        H2_preju.innerHTML = ` Total do Prejuizo Anual.`;
    }


//vetor de labels
const labels = [
    'Janeiro',
    'Fevereiro',
    'Março',
    'Abril',
    'Maio',
    'Junho',
    'Julho',
    'Agosto',
    'Setembro',
    'Outubro',
    'Novembro',
    'Dezembro',
];

const data = {
    labels: labels,
    datasets: [{
        label: 'Dados Mensais',
        backgroundColor: 'rgb(232, 56, 71)',
        borderColor: 'rgb(232, 56, 71)',
        data: [0, 10, 5, 2, 20, 30, 45, 2, 20, 30, 45, 5],
    }]
};

const config = {
    type: 'bar',
    data: data,
    options: {}
};
const myChart = new Chart(
    document.getElementById('myChart'),
    config
);