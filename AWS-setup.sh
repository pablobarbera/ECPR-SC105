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

# materials day 3
for i in 0{1..9} {10..40}
do
	cp /home/rstudio/code/07-networks-intro.Rmd /home/bigdata$i/code/
	cp /home/rstudio/code/08-community-detection.Rmd /home/bigdata$i/code/
	cp /home/rstudio/code/09-latent-space.Rmd /home/bigdata$i/code/
	cp /home/rstudio/code/challenge6.Rmd /home/bigdata$i/code/
	cp /home/rstudio/code/challenge7.Rmd /home/bigdata$i/code/
	cp /home/rstudio/data/accounts-twitter-data.csv /home/bigdata$i/data/
	cp /home/rstudio/data/ecpr-edges.csv /home/bigdata$i/data/
	cp /home/rstudio/data/ecpr-nodes.csv /home/bigdata$i/data/
	cp /home/rstudio/data/GOT-edges.csv /home/bigdata$i/data/
	cp /home/rstudio/data/house.csv /home/bigdata$i/data/
	cp /home/rstudio/data/insta-edges.csv /home/bigdata$i/data/
	cp /home/rstudio/data/insta-nodes.csv /home/bigdata$i/data/
	cp /home/rstudio/data/senate.csv /home/bigdata$i/data/
	cp /home/rstudio/data/UK-follower-network.rdata /home/bigdata$i/data/
	cp /home/rstudio/data/UK-mps-data.csv /home/bigdata$i/data/
	cp /home/rstudio/data/US-follower-network.rdata /home/bigdata$i/data/
	mkdir /home/bigdata$i/backup/
	cp /home/rstudio/backup/ca-results.rdata /home/bigdata$i/backup/
	sudo chown bigdata$i -R /home/bigdata$i/
done

# solutions challenge 4 + 5
for i in 0{1..9} {10..40}
do
	cp /home/rstudio/code/challenge4-solutions.Rmd /home/bigdata$i/code/
	cp /home/rstudio/code/challenge4-solutions.html /home/bigdata$i/code/
	cp /home/rstudio/code/challenge5-solutions.Rmd /home/bigdata$i/code/
	cp /home/rstudio/code/challenge5-solutions.html /home/bigdata$i/code/
	sudo chown bigdata$i -R /home/bigdata$i/
done


# solutions challenge 6
for i in 0{1..9} {10..40}
do
	cp /home/rstudio/code/challenge6-solutions.Rmd /home/bigdata$i/code/
	cp /home/rstudio/code/challenge6-solutions.html /home/bigdata$i/code/
	sudo chown bigdata$i -R /home/bigdata$i/
done

# materials day 4
for i in 0{1..9} {10..40}
do
	cp /home/rstudio/code/10-dictionary-methods.Rmd /home/bigdata$i/code
	cp /home/rstudio/code/11-supervised-learning.Rmd /home/bigdata$i/code
	cp /home/rstudio/code/12-advanced-sml.Rmd /home/bigdata$i/code
	cp /home/rstudio/code/13-xgboost.Rmd /home/bigdata$i/code
	cp /home/rstudio/code/challenge8.Rmd /home/bigdata$i/code
	cp /home/rstudio/code/challenge9.Rmd /home/bigdata$i/code
	cp /home/rstudio/data/FB-UK-parties.csv /home/bigdata$i/data/
	cp /home/rstudio/data/incivility.csv /home/bigdata$i/data/
	cp /home/rstudio/data/liwc-dictionary.csv /home/bigdata$i/data/
	cp /home/rstudio/data/candidate-tweets.csv /home/bigdata$i/data/
	cp /home/rstudio/data/trump-tweets.json /home/bigdata$i/data/
	sudo chown bigdata$i -R /home/bigdata$i/
done

# solutions challenge 7
for i in 0{1..9} {10..40}
do
	cp /home/rstudio/code/challenge7-solutions.Rmd /home/bigdata$i/code/
	cp /home/rstudio/code/challenge7-solutions.html /home/bigdata$i/code/
	sudo chown bigdata$i -R /home/bigdata$i/
done


# solutions challenge 8
for i in 0{1..9} {10..40}
do
	cp /home/rstudio/code/challenge8-solutions.Rmd /home/bigdata$i/code/
	cp /home/rstudio/code/challenge8-solutions.html /home/bigdata$i/code/
	sudo chown bigdata$i -R /home/bigdata$i/
done


# materials day 5
for i in 0{1..9} {10..40}
do
	cp /home/rstudio/code/14-text-discovery.Rmd /home/bigdata$i/code
	cp /home/rstudio/code/15-topic-models.Rmd /home/bigdata$i/code
	cp /home/rstudio/code/16-word-embeddings.Rmd /home/bigdata$i/code
	cp /home/rstudio/code/vec.bin /home/bigdata$i/code
	cp /home/rstudio/code/FBvec.bin /home/bigdata$i/code
	cp /home/rstudio/code/challenge10.Rmd /home/bigdata$i/code
	cp /home/rstudio/data/nytimes.csv /home/bigdata$i/data/
	sudo chown bigdata$i -R /home/bigdata$i/
done


# solutions challenge 9
for i in 0{1..9} {10..40}
do
	cp /home/rstudio/code/challenge9-solutions.Rmd /home/bigdata$i/code/
	cp /home/rstudio/code/challenge9-solutions.html /home/bigdata$i/code/
	sudo chown bigdata$i -R /home/bigdata$i/
done

# solutions challenge 10
for i in 0{1..9} {10..40}
do
	cp /home/rstudio/code/challenge10-solutions.Rmd /home/bigdata$i/code/
	cp /home/rstudio/code/challenge10-solutions.html /home/bigdata$i/code/
	sudo chown bigdata$i -R /home/bigdata$i/
done