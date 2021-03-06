n <- 750
r <- 75
vect <- seq(n) 
signal<-function(n)
{(n^2.75)/exp(sqrt(n/2)) +.40*n -sqrt(n)}
x <- sample(vect, r)
noise<- rnorm(r, mean=10, sd=20)
#y <- rnorm(r, (x^2.75)/exp(sqrt(x/2)) +.40*x -sqrt(x), 20)
y <- signal(x) + noise
Data <- data.frame(x, y)
plot(y ~ x, Data)
curve(signal(x), from=1, to=n, , xlab="x", ylab="y", add=TRUE)
