library("Ternary")
rm(list = ls())

# par(mar = rep(0.2, 4))

pdf(file="polarization-ternary.pdf")

# plot.new()

TernaryPlot(alab = "p", blab = "q", clab = "r")

POLARIZATION <- function(a, b, c) {
  4*(a^2*(1-a)+b^2*(1-b)+c^2*(1-c))
}

# Compute and plot colour tiles
values <- TernaryPointValues(POLARIZATION, resolution = 24L)
ColourTernary(values)

# Add contour lines
TernaryContour(POLARIZATION, resolution = 36L)

dev.off()
