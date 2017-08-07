# Summer School: Big Data Analysis in the Social Sciences

## Part of the 
* [2017 ECPR Summer School in Methods and Techniques](https://ecpr.eu/Events/PanelDetails.aspx?PanelID=7061&EventID=116)

## CEU, Budapest, August 7 - August 11, 2017

## Instructors

* [Pablo Barber&aacute;](http://pablobarbera.com/)
* TA: [Juraj Medzihorsky](http://pds.ceu.edu/people/juraj-medzihorsky)

## Outline

Massive-scale datasets from web sources and social media, newly digitized text sources, and large longitudinal survey studies present exciting opportunities for the study of social and political behaviour, but at the same time its size and heterogeneity present significant challenges. This course will introduce participants to new computational methods and tools required to explore and analyse Big Data in the social sciences using the R programming language. It will be structured around techniques to deal with the 3 V's of Big Data: volume, variety, and veracity. First, we will cover the basics of parallel programming and cloud computing to analyse large-scale datasets. Second, we will learn how to scale human tasks through the use of machine learning methods. Finally, we will discuss how to automatically discover insights from large text and network datasets and validate the output of this analysis. The course will follow a "learning-by-doing" approach, with short theoretical sessions followed by "data challenges" where participants will need to apply new methods.

Additional information and schedule is available at the [ECPR Summer School website](https://ecpr.eu/Events/PanelDetails.aspx?PanelID=7061&EventID=116)

## Setup and Preparation

There are two ways you can follow the course and run the code contained in this GitHub repository. The recommended method is to connect to the provided RStudio server where all the R packages have already been installed, and all the R code is available. To access the server, visit bigdata.pablobarbera.com and log in with the information provided during class.

Alternatively, you can run the code in your own laptop. You will need [R](https://cran.r-project.org/) and [RStudio](https://www.rstudio.com/) installed.

If you're using your own laptop, you can either download the course materials clicking on each link in this repository, download it as a zip file, or you can "clone" it, using the buttons found to the right side of your browser window as you view this repository.  If you do not have a git client installed on your system, you will need to [get one here](https://git-scm.com/download/gui) and also to make sure that [git is installed](https://git-scm.com/downloads). 

You can also subscribe to the repository if you have [a GitHub account](https://github.com), which will send you updates each time new changes are pushed to the repository.

## Day 1

The course will begin with a discussion of the concept of "Big Data" and the research opportunities and challenges of the use of massive-scale datasets in the social sciences. The first session will also provide a foundation of R coding skills upon which we will rely during the rest of the course. Here, we will go over existing packages to efficiently analyze large-scale datasets in R, how to parallelize for loops, and how to read and write large files.

[Slides: Big Data in the social sciences (.pdf)](day1/slides-big-data.pdf)

[Slides: Efficient data analysis with R (.pdf)](day1/slides-parallel.pdf)

[Code: Efficient programming with R (.html)](html/01-efficient-programming.html)

[Challenge 1: Writing more efficient code](day1/challenge1.Rmd)

[Code: Parallel computing with R (.html)](html/02-parallel-computing.html)

[Challenge 2: Parallel computing](day1/challenge2.Rmd)

## Day 2

The second session will focus on the most common application of Big Data in the social sciences: large-scale text classification. After a quick overview of the basics of machine learning, we will discuss specific details of the implementation of supervised learning algorithms in massive-scale datasets, and in particular recently-developed methods in computer science such as stochastic gradient descent, xgboost, and ensemble classifiers. Our emphasis will lie on the practical aspects: we will study these methods in the context of an application of sentiment analysis to newspaper articles, and will go through the entire research process, from the creation of a training dataset labeled by humans using crowd-sourcing platforms, to the application and validation of the machine learning algorithm, and passing through all the intermediate steps, such as cleaning and preprocessing the corpus of documents.

[Slides: Supervised machine learning (.pdf)](day2/slides-supervised-ML.pdf)

[Code: Regularized regression](day2/01-regularized-regression.html)

[Code: SVM, Random Forests, and beyond](day2/02-advanced-sml.html)

[Challenge 1: ](day2/challenge1.Rmd)

[Slides: Creating training datasets (.pdf)](day2/slides-training-data.pdf)

[Code: Large-scale text classification](day2/03-big-text.html)

[Challenge 2: ](day2/challenge2.Rmd)

## Day 3

Exploratory data analysis can be a powerful tool for social scientists when they are interested in analyzing a new dataset. The third session will cover the existing tools for large-scale discovery in "Big Data" using R, applied to textual datasets. We will start with different techniques, such as collocation analysis, TF-IDF feature weighting and word2vec, which will allow us to identify salient themes and ideas across documents. Then, we will move to topic models, which allow researchers to automatically identify latent classes of documents in a corpus, with an application to the classification of Facebook posts by politicians into relevant political issues. This session will also cover other dimensionality reduction techniques that are commonly used in the social sciences to visualize large-scale dataset.

[Slides: Topic discovery in text datasets (.pdf)](day3/slides-text-discovery.pdf)

[Code: Discovery in text](day3/01-text-discovery.html)

[Code: Dimensionality reduction techniques](day3/02-dimensionality-reduction.html)

[Challenge 1: ](day3/challenge1.Rmd)

[Slides: Topic models (.pdf)](day3/slides-topic-models.pdf)

[Code: Topic models](day3/01-topic-models.html)

[Challenge 2: ](day3/challenge2.Rmd)



## Day 4

In the fourth session we will turn our attention to social networks, and in particular the detection of communities of individuals with shared interests or political preferences. The running example in this part of the course will be the classification of Twitter users along a latent ideological dimension based on the structure of the networks in which they are embedded. A common theme to this session and the previous one will be the emphasis on validation: once an unsupervised model is completed, how can we measure the quality of the results? We will discuss basics concepts of measurement theory, and best practices in the validation of the results from unsupervised statistical models.


[Slides: Advanced network analysis (.pdf)](day4/slides-networks.pdf)

[Code: Community detection in networks (.html)](day4/01-community-detection.html)

[Code: Latent-space models (.html)](day4/02-latent-space.html)

[Challenge 1: ](day4/challenge1.Rmd)

[Code: Basics of UNIX (.txt)](day4/unix.txt)

[Challenge 2: ](day4/challenge2.Rmd)


## Day 5

The course will conclude with an introduction to cloud computing and database management for social scientists. Most available online resources and courses on these topics assume students are proficient in UNIX or have a background in programming. Here, however, we will start from scratch and focus on the coding skills required to conduct statistical analyses with data hosted in the “cloud”, while at the same time helping participants become familiar with programming concepts that can facilitate future collaborations with computer scientists. We will cover the most important commands in UNIX – the language required to interact with High-Performance Clusters (HPC), for example, which are now available in most universities – and test our skills in an online virtual machine hosted on Amazon Elastic Compute Cloud (EC2). In the second half of this session, we will learn the basics of SQL, and run our own queries in a dataset with over a billion geolocated tweets hosted in Google BigQuery.


[Slides: Introduction to cloud computing (.pdf)](day5/cloud-computing.pdf)

[Code: UNIX and cloud computing (.txt)](day5/unix-cloud.txt)

[Challenge 1: Scheduling an R script using cron jobs](day5/challenge1.Rmd)

[Slides: SQL databases (.pdf)](day5/sql-slides.pdf)

[Code: Querying an SQL database (.html)](day5/01-sql.Rmd)

[Code: Introduction to Google Big Query (.html)](day5/02-bigquery.Rmd)

[Challenge 2: Querying billion-row datasets with SQL and Google BigQuery](day5/challenge2.Rmd)












