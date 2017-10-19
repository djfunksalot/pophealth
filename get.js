var https = require('https');
var fs = require('fs');
var args = process.argv.slice(2);
var getZip = function(zipcode) {
    var file = fs.createWriteStream(zipcode + ".csv");
    var baseURL = 'https://iaspub.epa.gov/enviro/efservice/'
    var request = https.get(baseURL + "/tri_facility/zip_code/"+zipcode+"/tri_reporting_form/CSV", function(response) {
        response.pipe(file);
    });
}
for (i in args) {
getZip(args[i]);
}
