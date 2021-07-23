var jsonfile = {
    "jsonarray": [
        {
            "Rank": 1,
            "Name": "Wii Sports",
            "Platform": "Wii",
            "Year": "2006",
            "Genre": "Sports",
            "Publisher": "Nintendo",
            "NA_Sales": 41.49,
            "EU_Sales": 29.02,
            "JP_Sales": 3.77,
            "Other_Sales": 8.46,
            "Global_Sales": 82.74,
            "Total_Games": 706
        },
        {
            "Rank": 29,
            "Name": "Gran Turismo 3: A-Spec",
            "Platform": "PS2",
            "Year": "2001",
            "Genre": "Racing",
            "Publisher": "Sony Computer Entertainment",
            "NA_Sales": 6.85,
            "EU_Sales": 5.09,
            "JP_Sales": 1.87,
            "Other_Sales": 1.16,
            "Global_Sales": 14.98,
            "Total_Games": 552
        },
        {
            "Rank": 16,
            "Name": "Kinect Adventures!",
            "Platform": "X360",
            "Year": "2010",
            "Genre": "Misc",
            "Publisher": "Microsoft Game Studios",
            "NA_Sales": 14.97,
            "EU_Sales": 4.94,
            "JP_Sales": 0.24,
            "Other_Sales": 1.67,
            "Global_Sales": 21.82,
            "Total_Games": 346
        },
        {
            "Rank": 30,
            "Name": "Call of Duty: Modern Warfare 3",
            "Platform": "X360",
            "Year": "2011",
            "Genre": "Shooter",
            "Publisher": "Activision",
            "NA_Sales": 9.03,
            "EU_Sales": 4.28,
            "JP_Sales": 0.13,
            "Other_Sales": 1.32,
            "Global_Sales": 14.76,
            "Total_Games": 134
        }
    ]
}

var labels = jsonfile.jsonarray.map(function (e) {
    return e.Publisher;
});
var data = jsonfile.jsonarray.map(function (e) {
    return e.Total_Games;
});;

var ctx = canvas.getContext('2d');
var config = {
    type: 'bar',
    options: {
        scales: {
            xAxes: [{
                ticks: {
                    maxRotaion: 0,
                    minRotation: 0
                }
            }]
        }
    },
    data: {
        labels: labels,
        datasets: [{
            label: 'Total Games (Published)',
            data: data,
            backgroundColor: 'rgba(0, 119, 204, 0.3)'
        }]
    }
};

var chart = new Chart(ctx, config);