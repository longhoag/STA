osu_data <- c(450, 420, 469, 360, 450, 390, 250, 415, 410, 480, 444, 461, 260, 440,
              345, 435, 449)
iidx_data <- c(350, 369, 275, 215, 249, 210, 360, 320, 215, 233, 280, 274, 290, 310,
               320, 290, 304)

# part(a)
sv <- function(data) {
  variance <- sum((data - mean(data)) * (data - mean(data)))/ (length(data) - 1)
  return(variance)
}
sd(osu_data)
sv(osu_data)

ba <- boxplot(osu_data, horizontal=T)
osu_data
barplot(osu_data)
find_outliers(osu_data)

#I think the data is negatively skewed, because in the boxplot, the median line is more towards
# the upper fourth.
find_fs <- function(bplot) {
  fl <- bplot$stats[2]; fl
  fu <- bplot$stats[4]; fu
  fs <- fu - fl
  
  cat("Spread of fourths: ", fs)
}

find_fs(ba)

#part (b)
sd(iidx_data)
sv(iidx_data)

bb <- boxplot(iidx_data, horizontal=T)
#I think the data is more likely to be symmetric, since the median value line falls in the middle of the box,
# middle between the upper and lower fourth. However, we can see that it is somehow leaning more towards the right side, 
# so it could also be negatively skewed.

find_fs(bb)

#part (c)
sd(osu_data)
sd(iidx_data)

#Since the standard deviation of osu_data is 67.83723 and the standard deviation of the iidx_data is 50.0261
# the osu_data is more spread.
boxplot(osu_data, iidx_data)
# After viewing the boxplot, the size of the box for osu_data is slightly smaller than that for the iidx_data
# so we can say that the osu_data is less spread, which is against our previous assumption.
# I believe the difference lies on the 2 outlier values (affecting the mean which affects the standard deviation value) that mess up the standard deviation that we have the standard deviation of osu is bigger than that of the iidx data.

#calculate cv
cvo <- sd(osu_data) / mean(osu_data); cvo
cvi <- sd(iidx_data) / mean(iidx_data); cvi

# After calculating the CV, these results don't agree with my first statement, since the CV for osu data is 0.1664597 and for iidx data is 0.1748445
# Therefore, the iidx_data is more spread.


#part (d)
find_outliers <- function(data){
  bp <- boxplot(data, horizontal=T)
  fl <- bp$stats[2]; fl
  fu <- bp$stats[4]; fu
  fs <- fu - fl
  
  mild_range <- c(fl - 1.5*fs, fu + 1.5*fs); mild_range
  ext_range  <- c(fl - 3*fs, fu + 3*fs); ext_range
  
  
  cat("Extreme Outliers: ", 
      data[which(data <=  ext_range[1] | data >=  ext_range[2])])
  
  cat("\n   Mild Outliers: ", 
      data[which((data <= mild_range[1] | data >= mild_range[2]) & 
                   !(data <= ext_range[1] | data >= ext_range[2]))
      ]
  )
}
find_outliers(osu_data)
new_osu_data <- c(450, 420, 469, 360, 450, 390, 415, 410, 480, 444, 461, 440,
                  345, 435, 449)
boxplot(new_osu_data)

sd(new_osu_data)
sv(new_osu_data)
cvn <- sd(new_osu_data) / mean(new_osu_data); cvn
# I calculate that the CV for the new data set is 0.09018538. Therefore, it has less spread than the other two data sets.
boxplot(new_osu_data, osu_data, iidx_data)

# The standout feature from the new plot is that the new data set is constructed by removing the outliers of the osu_data. However,
# the new data set boxplot still has 1 outlier. In addition, we can also see that the spread of fourth of the new data set boxplot is
# smaller than that of the others, since we can tell by smaller box size.
# Also, the upper fourth of the new osu and the previous osu is likely to be the same.

