library("Ternary")
rm(list = ls())

# par(mar = rep(0.2, 4))

pdf(file="entropy-ternary.pdf")

# plot.new()

TernaryPlot(alab = "p", blab = "q", clab = "r")

ENTROPY <- function(a, b, c) {
  ifelse(a*b*c > 0,-(log(a)*a + log(b)*b + log(c)*c),NA)
}

# Compute and plot colour tiles
values <- TernaryPointValues(ENTROPY, resolution = 24L)
ColourTernary(values)

# Add contour lines
TernaryContour(ENTROPY, resolution = 36L)

dev.off()
