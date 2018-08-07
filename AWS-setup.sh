## step 1) login to console, sudo su, open R
## install packages from Setup
## for topic models, run: sudo apt-get install libgsl0-dev

# creating new users
for i in 0{1..9} {10..40}
do
	adduser --quiet --disabled-password --shell /bin/bash --home /home/bigdata$i --gecos "User" bigdata$i
	echo "bigdata$i:password$i" | chpasswd
done


# copying files and changing permissions
for i in 0{1..9} {10..40}
do
	mkdir /home/bigdata$i/code
	mkdir /home/bigdata$i/data
	mkdir /home/bigdata$i/data/inaugural
	cp /home/rstudio/code/* /home/bigdata$i/code/
	cp /home/rstudio/data/* /home/bigdata$i/data/	
	cp /home/rstudio/data/inaugural/* /home/bigdata$i/data/inaugural/
	sudo chown bigdata$i -R /home/bigdata$i/
done	


# solutions challenge 1
for i in 0{1..9} {10..40}
do
	cp /home/rstudio/code/challenge1-solutions.Rmd /home/bigdata$i/code/
	cp /home/rstudio/code/challenge1-solutions.html /home/bigdata$i/code/
	sudo chown bigdata$i -R /home/bigdata$i/
done


# solutions challenge 2
for i in 0{1..9} {10..40}
do
	cp /home/rstudio/code/challenge2-solutions.Rmd /home/bigdata$i/code/
	cp /home/rstudio/code/challenge2-solutions.html /home/bigdata$i/code/
	sudo chown bigdata$i -R /home/bigdata$i/
done


# copying files and changing permissions
for i in 0{1..9} {10..40}
do
	mkdir /home/bigdata$i/data/posts
	cp /home/rstudio/data/posts/* /home/bigdata$i/data/posts/
	cp /home/rstudio/data/congress-facebook-2017.csv /home/bigdata$i/data/	
	cp /home/rstudio/code/03-sql-intro.Rmd /home/bigdata$i/code/
	cp /home/rstudio/code/04-sql-advanced.Rmd /home/bigdata$i/code/
	cp /home/rstudio/code/05-bigquery-intro.Rmd /home/bigdata$i/code/
	cp /home/rstudio/code/06-bigquery-advanced.Rmd /home/bigdata$i/code/
	cp /home/rstudio/code/challenge3.Rmd /home/bigdata$i/code/
	cp /home/rstudio/code/challenge4.Rmd /home/bigdata$i/code/
	cp /home/rstudio/code/challenge5.Rmd /home/bigdata$i/code/
	sudo chown bigdata$i -R /home/bigdata$i/
done

# copying files and changing permissions
for i in 0{1..9} {10..40}
do
	mkdir /home/bigdata$i/credentials
	cp /home/rstudio/credentials/bigquery-token.json /home/bigdata$i/credentials/
	sudo chown bigdata$i -R /home/bigdata$i/
done

# copying files and changing permissions
for i in 0{1..9} {10..40}
do
	cp /home/rstudio/code/06-bigquery-advanced.Rmd /home/bigdata$i/code/
	sudo chown bigdata$i -R /home/bigdata$i/
done

# solutions challenge 3
for i in 0{1..9} {10..40}
do
	cp /home/rstudio/code/challenge3-solutions.Rmd /home/bigdata$i/code/
	cp /home/rstudio/code/challenge3-solutions.html /home/bigdata$i/code/
	sudo chown bigdata$i -R /home/bigdata$i/
done