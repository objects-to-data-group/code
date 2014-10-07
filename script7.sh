# Enter Base URL 
baseurl="http://api.nytimes.com/svc/search/v2/articlesearch.json"

# Enter API key"
key="sample-key"

# Create two queries you want to compare
query1="Science"
query2="Humanities"

# The following lines allow you to select a single decade
begin_date_year="1850"
begin_date_month="01"
begin_date_day="01"
end_date_year="1859"
end_date_month="12"
end_date_day="31"
begin_date_year2="1860"
end_date_year2="1869"
begin_date_year3="1870"
end_date_year3="1879"
begin_date_year4="1880"
end_date_year4="1889"
begin_date_year5="1890"
end_date_year5="1899"
begin_date_year6="1900"
end_date_year6="1909"
begin_date_year7="1910"
end_date_year7="1919"
begin_date_year8="1920"
end_date_year8="1929"
begin_date_year9="1930"
end_date_year9="1939"
begin_date_year10="1940"
end_date_year10="1949"
begin_date_year11="1950"
end_date_year11="1959"
begin_date_year12="1960"
end_date_year12="1969"
begin_date_year13="1970"
end_date_year13="1979"
begin_date_year14="1980"
end_date_year14="1989"
begin_date_year15="1990"
end_date_year15="1999"
begin_date_year16="2000"
end_date_year16="2009"

# Since the first results immediately show the total number of hits we only need page 0
page=0

# Establish the specific URL based on the pre-defined variables using query1
requestUrl="$baseurl?fq=$query1&api-key=$key&page=$page"

# Filter the number of hits from the results (this part of the code is still a bit messy)
results=`curl -s $requestUrl | awk -F ':' '{print $4}' | sed -E 's/,"time"//'`

# Display the results
echo -e $query1 "articles in database:" '\t' $results

# Build a second URL that does the same for query2
requestUrl2="$baseurl?fq=$query2&api-key=$key&page=$page"

# Filter the number of hits from the 2nd results
results2=`curl -s $requestUrl2 | awk -F ':' '{print $4}' | sed -E 's/,"time"//'`

# Display the second results
echo -e $query2 "articles in database: " '\t' $results2  '\n'

# Build a third URL 
requestUrl3="$baseurl?begin_date=$begin_date_year$begin_date_month$begin_date_day&end_date=$end_date_year$end_date_month$end_date_day&api-key=$key&page=$page&fq=$query1"

# Filter the number of hits from the 3rd results
results1850h=`curl -s $requestUrl3 | awk -F ':' '{print $4}' | sed -E 's/,"time"//'`

# Display the third results
echo -e $query1 "articles in the 1850's:" '\t' $results1850h

# Build a fourth URL
requestUrl4="$baseurl?begin_date=$begin_date_year$begin_date_month$begin_date_day&end_date=$end_date_year$end_date_month$end_date_day&api-key=$key&page=$page&fq=$query2"

# Filter the number of hits from the 4th results
results1850s=`curl -s $requestUrl4 | awk -F ':' '{print $4}' | sed -E 's/,"time"//'`

# Display the fourth results
echo -e $query2 "articles in the 1850's:" '\t' $results1850s '\n'

# 1860's 
requestUrl5="$baseurl?begin_date=$begin_date_year2$begin_date_month$begin_date_day&end_date=$end_date_year2$end_date_month$end_date_day&api-key=$key&page=$page&fq=$query1"
results1860h=`curl -s $requestUrl5 | awk -F ':' '{print $4}' | sed -E 's/,"time"//'`
echo -e $query1 "articles in the 1860's:" '\t' $results1860h

requestUrl6="$baseurl?begin_date=$begin_date_year2$begin_date_month$begin_date_day&end_date=$end_date_year2$end_date_month$end_date_day&api-key=$key&page=$page&fq=$query2"
results1860s=`curl -s $requestUrl6 | awk -F ':' '{print $4}' | sed -E 's/,"time"//'`
echo -e $query2 "articles in the 1860's:" '\t' $results1860s  '\n'

# 1870's 
requestUrl7="$baseurl?begin_date=$begin_date_year3$begin_date_month$begin_date_day&end_date=$end_date_year3$end_date_month$end_date_day&api-key=$key&page=$page&fq=$query1"
results1870h=`curl -s $requestUrl7 | awk -F ':' '{print $4}' | sed -E 's/,"time"//'`
echo -e $query1 "articles in the 1870's:" '\t' $results1870h

requestUrl8="$baseurl?begin_date=$begin_date_year3$begin_date_month$begin_date_day&end_date=$end_date_year3$end_date_month$end_date_day&api-key=$key&page=$page&fq=$query2"
results1870s=`curl -s $requestUrl8 | awk -F ':' '{print $4}' | sed -E 's/,"time"//'`
echo -e $query2 "articles in the 1870's:" '\t' $results1870s  '\n'

# 1880's 
requestUrl9="$baseurl?begin_date=$begin_date_year4$begin_date_month$begin_date_day&end_date=$end_date_year4$end_date_month$end_date_day&api-key=$key&page=$page&fq=$query1"
results1880h=`curl -s $requestUrl9 | awk -F ':' '{print $4}' | sed -E 's/,"time"//'`
echo -e $query1 "articles in the 1880's:" '\t' $results1880h

requestUrl10="$baseurl?begin_date=$begin_date_year4$begin_date_month$begin_date_day&end_date=$end_date_year4$end_date_month$end_date_day&api-key=$key&page=$page&fq=$query2"
results1880s=`curl -s $requestUrl10 | awk -F ':' '{print $4}' | sed -E 's/,"time"//'`
echo -e $query2 "articles in the 1880's:" '\t' $results1880s  '\n'

# 1890's 
requestUrl9="$baseurl?begin_date=$begin_date_year5$begin_date_month$begin_date_day&end_date=$end_date_year5$end_date_month$end_date_day&api-key=$key&page=$page&fq=$query1"
results1890h=`curl -s $requestUrl9 | awk -F ':' '{print $4}' | sed -E 's/,"time"//'`
echo -e $query1 "articles in the 1890's:" '\t' $results1890h

requestUrl10="$baseurl?begin_date=$begin_date_year5$begin_date_month$begin_date_day&end_date=$end_date_year5$end_date_month$end_date_day&api-key=$key&page=$page&fq=$query2"
results1890s=`curl -s $requestUrl10 | awk -F ':' '{print $4}' | sed -E 's/,"time"//'`
echo -e $query2 "articles in the 1890's:" '\t' $results1890s  '\n'

# 1900's 
requestUrl9="$baseurl?begin_date=$begin_date_year6$begin_date_month$begin_date_day&end_date=$end_date_year6$end_date_month$end_date_day&api-key=$key&page=$page&fq=$query1"
results1900h=`curl -s $requestUrl9 | awk -F ':' '{print $4}' | sed -E 's/,"time"//'`
echo -e $query1 "articles in the 1900's:" '\t' $results1900h

requestUrl10="$baseurl?begin_date=$begin_date_year6$begin_date_month$begin_date_day&end_date=$end_date_year6$end_date_month$end_date_day&api-key=$key&page=$page&fq=$query2"
results1900s=`curl -s $requestUrl10 | awk -F ':' '{print $4}' | sed -E 's/,"time"//'`
echo -e $query2 "articles in the 1900's:" '\t' $results1900s  '\n'

# 1910's 
requestUrl9="$baseurl?begin_date=$begin_date_year7$begin_date_month$begin_date_day&end_date=$end_date_year7$end_date_month$end_date_day&api-key=$key&page=$page&fq=$query1"
results1910h=`curl -s $requestUrl9 | awk -F ':' '{print $4}' | sed -E 's/,"time"//'`
echo -e $query1 "articles in the 1910's:" '\t' $results1910h

requestUrl10="$baseurl?begin_date=$begin_date_year7$begin_date_month$begin_date_day&end_date=$end_date_year7$end_date_month$end_date_day&api-key=$key&page=$page&fq=$query2"
results1910s=`curl -s $requestUrl10 | awk -F ':' '{print $4}' | sed -E 's/,"time"//'`
echo -e $query2 "articles in the 1910's:" '\t' $results1910s  '\n'

# 1920's 
requestUrl9="$baseurl?begin_date=$begin_date_year8$begin_date_month$begin_date_day&end_date=$end_date_year8$end_date_month$end_date_day&api-key=$key&page=$page&fq=$query1"
results1920h=`curl -s $requestUrl9 | awk -F ':' '{print $4}' | sed -E 's/,"time"//'`
echo -e $query1 "articles in the 1920's:" '\t' $results1920h

requestUrl10="$baseurl?begin_date=$begin_date_year8$begin_date_month$begin_date_day&end_date=$end_date_year8$end_date_month$end_date_day&api-key=$key&page=$page&fq=$query2"
results1920s=`curl -s $requestUrl10 | awk -F ':' '{print $4}' | sed -E 's/,"time"//'`
echo -e $query2 "articles in the 1920's:" '\t' $results1920s  '\n'

# 1930's 
requestUrl9="$baseurl?begin_date=$begin_date_year9$begin_date_month$begin_date_day&end_date=$end_date_year9$end_date_month$end_date_day&api-key=$key&page=$page&fq=$query1"
results1930h=`curl -s $requestUrl9 | awk -F ':' '{print $4}' | sed -E 's/,"time"//'`
echo -e $query1 "articles in the 1930's:" '\t' $results1930h                                            

requestUrl10="$baseurl?begin_date=$begin_date_year9$begin_date_month$begin_date_day&end_date=$end_date_year9$end_date_month$end_date_day&api-key=$key&page=$page&fq=$query2"
results1930s=`curl -s $requestUrl10 | awk -F ':' '{print $4}' | sed -E 's/,"time"//'`
echo -e $query2 "articles in the 1930's:" '\t' $results1930s  '\n'

# 1940's 
requestUrl9="$baseurl?begin_date=$begin_date_year10$begin_date_month$begin_date_day&end_date=$end_date_year10$end_date_month$end_date_day&api-key=$key&page=$page&fq=$query1"
results1940h=`curl -s $requestUrl9 | awk -F ':' '{print $4}' | sed -E 's/,"time"//'`
echo -e $query1 "articles in the 1940's:" '\t' $results1940h

requestUrl10="$baseurl?begin_date=$begin_date_year10$begin_date_month$begin_date_day&end_date=$end_date_year10$end_date_month$end_date_day&api-key=$key&page=$page&fq=$query2"
results1940s=`curl -s $requestUrl10 | awk -F ':' '{print $4}' | sed -E 's/,"time"//'`
echo -e $query2 "articles in the 1940's:" '\t' $results1940s  '\n'

# 1950's 
requestUrl9="$baseurl?begin_date=$begin_date_year11$begin_date_month$begin_date_day&end_date=$end_date_year11$end_date_month$end_date_day&api-key=$key&page=$page&fq=$query1"
results1950h=`curl -s $requestUrl9 | awk -F ':' '{print $4}' | sed -E 's/,"time"//'`
echo -e $query1 "articles in the 1950's:" '\t' $results1950h

requestUrl10="$baseurl?begin_date=$begin_date_year11$begin_date_month$begin_date_day&end_date=$end_date_year11$end_date_month$end_date_day&api-key=$key&page=$page&fq=$query2"
results1950s=`curl -s $requestUrl10 | awk -F ':' '{print $4}' | sed -E 's/,"time"//'`
echo -e $query2 "articles in the 1950's:" '\t' $results1950s  '\n'

# 1960's 
requestUrl9="$baseurl?begin_date=$begin_date_year12$begin_date_month$begin_date_day&end_date=$end_date_year12$end_date_month$end_date_day&api-key=$key&page=$page&fq=$query1"
results1960h=`curl -s $requestUrl9 | awk -F ':' '{print $4}' | sed -E 's/,"time"//'`
echo -e $query1 "articles in the 1960's:" '\t' $results1960h

requestUrl10="$baseurl?begin_date=$begin_date_year12$begin_date_month$begin_date_day&end_date=$end_date_year12$end_date_month$end_date_day&api-key=$key&page=$page&fq=$query2"
results1960s=`curl -s $requestUrl10 | awk -F ':' '{print $4}' | sed -E 's/,"time"//'`
echo -e $query2 "articles in the 1960's:" '\t' $results1960s  '\n'

# 1970's 
requestUrl9="$baseurl?begin_date=$begin_date_year13$begin_date_month$begin_date_day&end_date=$end_date_year13$end_date_month$end_date_day&api-key=$key&page=$page&fq=$query1"
results1970h=`curl -s $requestUrl9 | awk -F ':' '{print $4}' | sed -E 's/,"time"//'`
echo -e $query1 "articles in the 1970's:" '\t' $results1970h

requestUrl10="$baseurl?begin_date=$begin_date_year13$begin_date_month$begin_date_day&end_date=$end_date_year13$end_date_month$end_date_day&api-key=$key&page=$page&fq=$query2"
results1970s=`curl -s $requestUrl10 | awk -F ':' '{print $4}' | sed -E 's/,"time"//'`
echo -e $query2 "articles in the 1970's:" '\t' $results1970s  '\n'

# 1980's 
requestUrl9="$baseurl?begin_date=$begin_date_year14$begin_date_month$begin_date_day&end_date=$end_date_year14$end_date_month$end_date_day&api-key=$key&page=$page&fq=$query1"
results1980h=`curl -s $requestUrl9 | awk -F ':' '{print $4}' | sed -E 's/,"time"//'`
echo -e $query1 "articles in the 1980's:" '\t' $results1980h

requestUrl10="$baseurl?begin_date=$begin_date_year14$begin_date_month$begin_date_day&end_date=$end_date_year14$end_date_month$end_date_day&api-key=$key&page=$page&fq=$query2"
results1980s=`curl -s $requestUrl10 | awk -F ':' '{print $4}' | sed -E 's/,"time"//'`
echo -e $query2 "articles in the 1980's:" '\t' $results1980s  '\n'

# 1990's 
requestUrl9="$baseurl?begin_date=$begin_date_year15$begin_date_month$begin_date_day&end_date=$end_date_year15$end_date_month$end_date_day&api-key=$key&page=$page&fq=$query1"
results1990h=`curl -s $requestUrl9 | awk -F ':' '{print $4}' | sed -E 's/,"time"//'`
echo -e $query1 "articles in the 1990's:" '\t' $results1990h

requestUrl10="$baseurl?begin_date=$begin_date_year15$begin_date_month$begin_date_day&end_date=$end_date_year15$end_date_month$end_date_day&api-key=$key&page=$page&fq=$query2"
results1990s=`curl -s $requestUrl10 | awk -F ':' '{print $4}' | sed -E 's/,"time"//'`
echo -e $query2 "articles in the 1990's:" '\t' $results1990s  '\n'

# 2000's 
requestUrl9="$baseurl?begin_date=$begin_date_year16$begin_date_month$begin_date_day&end_date=$end_date_year16$end_date_month$end_date_day&api-key=$key&page=$page&fq=$query1"
results2000h=`curl -s $requestUrl9 | awk -F ':' '{print $4}' | sed -E 's/,"time"//'`
echo -e $query1 "articles in the 2000's:" '\t' $results2000h

requestUrl10="$baseurl?begin_date=$begin_date_year16$begin_date_month$begin_date_day&end_date=$end_date_year16$end_date_month$end_date_day&api-key=$key&page=$page&fq=$query2"
results2000s=`curl -s $requestUrl10 | awk -F ':' '{print $4}' | sed -E 's/,"time"//'`
echo -e $query2 "articles in the 2000's:" '\t' $results2000s


#Create CSS file
echo 'body {
background: linear-gradient(to right bottom, #fff , #345);
}
#chart_div {
position: absolute;
top: 5%;
left: 5%;
width: 90%;
height: 90%;
opacity: 0.7;
border: 1px solid #999;
}' > decade_chart.css


#Create html file
echo '<html>
  <head>
    <link rel="stylesheet" type="text/css" href="decade_chart.css">
    <script type="text/javascript" src="https://www.google.com/jsapi"></script>
    <script type="text/javascript">
      google.load("visualization", "1", {packages:["corechart"]});
      google.setOnLoadCallback(drawChart);
      function drawChart() {
        var data = google.visualization.arrayToDataTable([
          ['\''Decade'\'', '\'''$query1''\'', '\'''$query2''\''],
          ['\''1850'\'',  '$results1850h',      '$results1850s'],
          ['\''1860'\'',  '$results1860h',      '$results1860s'],
          ['\''1870'\'',  '$results1870h',      '$results1870s'],
          ['\''1880'\'',  '$results1880h',      '$results1880s'],
          ['\''1890'\'',  '$results1890h',      '$results1890s'],
          ['\''1900'\'',  '$results1900h',      '$results1900s'],
          ['\''1910'\'',  '$results1910h',      '$results1910s'],
          ['\''1920'\'',  '$results1920h',      '$results1920s'],
          ['\''1930'\'',  '$results1930h',      '$results1930s'],
          ['\''1940'\'',  '$results1940h',      '$results1940s'],
          ['\''1950'\'',  '$results1950h',      '$results1950s'],
          ['\''1960'\'',  '$results1960h',      '$results1960s'],
          ['\''1970'\'',  '$results1970h',      '$results1970s'],
          ['\''1980'\'',  '$results1980h',      '$results1980s'],
          ['\''1990'\'',  '$results1990h',      '$results1990s'],
          ['\''2000'\'',  '$results2000h',      '$results2000s']
        ]);

        var options = {
          title: '\'''Number of $query1 vs. $query2 articles in The New York Times''\'',
          curveType: '\''function'\'',
          legend: { position: '\''bottom'\'' }
        };

        var chart = new google.visualization.LineChart(document.getElementById('\''chart_div'\''));

        chart.draw(data, options);
      }
    </script>
  </head>
  <body>
    <div id="chart_div"></div>
  </body>
</html>' > decade_chart.html

#Open html file
cygstart decade_chart.html
