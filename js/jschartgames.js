var jsonfile = {
    "jsonarray": [
        {
            "Rank": 222,
            "Name": "FIFA 17",
            "Platform": "PS4",
            "Year": "2016",
            "Genre": "Sports",
            "Publisher": "Electronic Arts",
            "NA_Sales": 0.28,
            "EU_Sales": 3.75,
            "JP_Sales": 0.06,
            "Other_Sales": 0.69,
            "Global_Sales": 4.77
        },
        {
            "Rank": 272,
            "Name": "Uncharted 4",
            "Platform": "PS4",
            "Year": "2016",
            "Genre": "Shooter",
            "Publisher": "Sony Computer Entertainment",
            "NA_Sales": 1.3,
            "EU_Sales": 2.07,
            "JP_Sales": 0.18,
            "Other_Sales": 0.65,
            "Global_Sales": 4.2
        },
        {
            "Rank": 352,
            "Name": "The Division",
            "Platform": "PS4",
            "Year": "2016",
            "Genre": "Shooter",
            "Publisher": "Ubisoft",
            "NA_Sales": 1.28,
            "EU_Sales": 1.61,
            "JP_Sales": 0.15,
            "Other_Sales": 0.57,
            "Global_Sales": 3.61
        },
        {
            "Rank": 1028,
            "Name": "Overwatch",
            "Platform": "PS4",
            "Year": "2016",
            "Genre": "Shooter",
            "Publisher": "Activision",
            "NA_Sales": 0.64,
            "EU_Sales": 0.68,
            "JP_Sales": 0.14,
            "Other_Sales": 0.26,
            "Global_Sales": 1.73
        },
        {
            "Rank": 1158,
            "Name": "No Man's Sky",
            "Platform": "PS4",
            "Year": "2016",
            "Genre": "Action",
            "Publisher": "Hello Games",
            "NA_Sales": 0.58,
            "EU_Sales": 0.74,
            "JP_Sales": 0.02,
            "Other_Sales": 0.26,
            "Global_Sales": 1.6
        },
        {
            "Rank": 1191,
            "Name": "Dark Souls III",
            "Platform": "PS4",
            "Year": "2016",
            "Genre": "Role-Playing",
            "Publisher": "Namco Bandai Games",
            "NA_Sales": 0.58,
            "EU_Sales": 0.44,
            "JP_Sales": 0.33,
            "Other_Sales": 0.21,
            "Global_Sales": 1.56
        },
        {
            "Rank": 1729,
            "Name": "Ratchet & Clank (2016)",
            "Platform": "PS4",
            "Year": "2016",
            "Genre": "Platform",
            "Publisher": "Sony Computer Entertainment",
            "NA_Sales": 0.32,
            "EU_Sales": 0.64,
            "JP_Sales": 0.04,
            "Other_Sales": 0.18,
            "Global_Sales": 1.17
        },
        {
            "Rank": 2436,
            "Name": "Far Cry: Primal",
            "Platform": "XOne",
            "Year": "2016",
            "Genre": "Action",
            "Publisher": "Ubisoft",
            "NA_Sales": 0.46,
            "EU_Sales": 0.32,
            "JP_Sales": 0,
            "Other_Sales": 0.07,
            "Global_Sales": 0.85
        }
    ]
}

var labels = jsonfile.jsonarray.map(function (e) {
    return e.Name;
});
var data = jsonfile.jsonarray.map(function (e) {
    return e.Global_Sales;
});;

var ctx = canvas.getContext('2d');
var config = {
    type: 'horizontalBar',
    data: {
        labels: labels,
        datasets: [{
            label: 'Global Sales (Millions)',
            data: data,
            backgroundColor: 'rgba(0, 119, 204, 0.3)'
        }]
    }
};

var chart = new Chart(ctx, config);