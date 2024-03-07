# LoGaP
Languages of Games and Play

## Web site
Along with the publication we present an interactive web site that allows searching and navigating the manuscript and its bibliographic data.

Because the web site incorporates PDF.js, a JavaScript-based PDF viewer created by Mozilla, it requires a HTTP server to work.

To host the web site locally one can use Python.

### Steps
The following steps should ensure that the PDF viewer works.

Open the console, navigate to the directory that contains the web site's index.html and type the following command:
 
python -m SimpleHTTPServer 8000

Now open Chrome or Safari (these browsers are verified to work) and navigate to the following url:

http://127.0.0.1:8000/

