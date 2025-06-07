n= c(30, 32, 35, 40, 47, 48, 49, 50, 52, 55, 60, 65, 76, 225, 325)
s=median(n)
s

x= c(10, 15, 25, 40, 60, 75)
f= c(3, 4, 6, 17, 12, 7)
x_full <- rep(x, f)
xf=median(x_full)
xf


#median grouped
# Step 1: Define the data
class_intervals <- c("118-126", "127-135", "136-144", "145-153", "154-162", "163-171", "172-180")
frequencies <- c(3, 5, 9, 12, 5, 4, 2)

# Step 2: Calculate cumulative frequencies
cum_frequencies <- cumsum(frequencies)

# Step 3: Total frequency
N <- sum(frequencies)

# Step 4: Find the median class (where cumulative frequency ≥ N/2)
median_class_index <- which(cum_frequencies >= N/2)[1]



#------------------------MODE --------------------------------------------
#### MODE ####
v= c(0.53, 0.46,0.50, 0.49, 0.52, 0.44, 0.55, 0.53, 0.40 , 0.56)
m= mode(v)
m
