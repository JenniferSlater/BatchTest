# Set the folder I want to use
folder<-"C:/Users/Jen/OneDrive/Desktop/batchtest" 

#lists all subfolders in my folder and prints it
listyear<- list.dirs(folder, recursive = FALSE)
print(listyear) #It should give me year 1 and 2

#I want to make it so it goes through each year and looks at weeks
for(year in listyear){
  listweek<- list.dirs(listyear, recursive = FALSE)
  print(listweek)#should give me a nice little path XD
for(week in listweek){
  images <- list.files(listweek, 
                       pattern="\\.(webp)$", #we can change this for any file type!!!
                       ignore.case = TRUE, #ignore caps changes like WebP vs webp
                       full.names = TRUE) #this gives full path which will be easier to track
  
#Idk how to do this any other way than if then statements so I am gonna use that but in the future we can change it
#I am gonna tell it to pull out 2 images from each week folder
  
  if (length(images) >= 2) { #if there are more than 2 pics in the folder
    randomimg <- sample(images, 2) #get a sample of 2
    # Print which week these images came from, show the image paths
    print(paste("we selected there images from",listweek))
    print(randomimg)
    
  }  
}
}

