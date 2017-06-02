# Some basic tests to make sure things are running.

GetHowManyTrees <- function(ntaxa) {
	#ape can compute this for us.
	library(ape)
	result <- howmanytrees(ntaxa)
	return(result)
}


GetAlignment <- function() {
	#Let's see where mafft is installed
	library(ape)
  library(ips)
  data(woodmouse)
	print(system("which mafft"))
	result <- ips::mafft(woodmouse)
	return(result)
}
