var jsonfile = {
    "jsonarray": [
        {
            "Rank": 1,
            "Name": "Playstation 2",
            "Total_Games": 3800
        },
        {
            "Rank": 2,
            "Name": "Playstation 4",
            "Total_Games": 3147
        },
        {
            "Rank": 3,
            "Name": "Playstation 3",
            "Total_Games": 2278
        },
        {
            "Rank": 4,
            "Name": "XBox 360",
            "Total_Games": 2154
        },
        {
            "Rank": 5,
            "Name": "Nintendo DS",
            "Total_Games": 2029
        },
        {
            "Rank": 6,
            "Name": "Wii",
            "Total_Games": 1597
        },
        {
            "Rank": 7,
            "Name": "Game Boy Advanced",
            "Total_Games": 1498
        },
        {
            "Rank": 8,
            "Name": "Game Boy",
            "Total_Games": 1046
        },
        {
            "Rank": 9,
            "Name": "NES",
            "Total_Games": 706
        },
        {
            "Rank": 10,
            "Name": "Nintendo 3DS",
            "Total_Games": 49
        }
    ]
}

var labels = jsonfile.jsonarray.map(function (e) {
    return e.Name;
});
var data = jsonfile.jsonarray.map(function (e) {
    return e.Total_Games;
});;

var ctx = canvas.getContext('2d');
var config = {
    type: 'line',
    options: {
        scales: {
            xAxes: [{
                ticks: {
                    maxRotaion: 45,
                    minRotation: 45
                }
            }]
        }
    },
    data: {
        labels: labels,
        datasets: [{
            label: 'Total Games (Playable)',
            data: data,
            backgroundColor: 'rgba(0, 119, 204, 0.3)'
        }]
    }
};

var chart = new Chart(ctx, config);