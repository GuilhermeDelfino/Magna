
const labels = [
    'January',
    'February',
    'March',
    'April',
    'May',
    'June',
];

const data = {
    labels: [
        'Piso 1-A',
        'Piso 2-A',
        'Piso 3-A'
    ],
    datasets: [ {
        data: [ 600, 300, 100 ],
        backgroundColor: [ '#c83241', '#5770dc', '#4ba3c3' ],
        hoverOffset: 4
    } ]
};
/** @type {*} */
const config = {
    type: 'doughnut',
    data: data,
    options: {
        plugins: {
            legend: {
                display: false,
            }
        }
    }
};


const myChart = new Chart(
    document.getElementById('myChart'),
    config
);
const labelsLine = [
    '11:00',
    '12:00',
    '14:00',
    '16:00',
    '18:00',
    '20:00',
    '22:00',
];

const dataLine = {
    labels: labelsLine,
    datasets: [
        {
            label: 'Piso 1-A',
            backgroundColor: '#e83847',
            borderColor: '#dc3545ff',
            data: [ 30, 50, 50, 80, 100, 150, 150 ],
        },
        {
            label: 'Piso 2-A',
            backgroundColor: '#4ba3c3',
            borderColor: '#0fa3c3',
            data: [ 70, 100, 110, 90, 80, 150, 170 ],
        },
        {
            label: 'Piso 3-A',
            backgroundColor: '#5770dc',
            borderColor: '#5660dc',
            data: [ 0, 20, 50, 50, 20, 100, 120 ],
        }
    ]
};

const configLine = {
    type: 'line',
    data: dataLine,
    options: {}
};
const lineChart = new Chart(
    document.getElementById('lineChart'),
    configLine
);

const labelsBar = [
    'Janeiro',
    'Fevereiro',
    'Março',
    'Abril',
    'Maio',
    'Junho',
];

const dataBar = {
    labels: labelsBar,
    datasets: [ {
        label: 'Quantidade de superlotações',
        backgroundColor: '#e83847',
        borderColor: '#dc3545ff',
        borderRadius: 8,
        data: [ 6, 10, 15, 20, 21, 15, 18 ],
    } ]
};

const configBar = {
    type: 'bar',
    data: dataBar,
    options: {
    }
};

const barChart = new Chart(
    document.getElementById('barChart'),
    configBar
);


