library(astrochron)

#### grayscale and PC1 ####
# read data
gray = read.csv("grayscale.csv") # depth is in meter
pc1 = read.csv("pc1.csv") # depth is in mm

# MTM on grayscale and PC1 data
gray_mtm = mtm(gray,siglevel=0.995, padfac = 5, pl=1,ar1 = F, output = 2)
pc1_mtm = mtm(pc1,siglevel=0.995, padfac = 5, pl=1,ar1 = F, output = 2)

gray_mtm = mtm(gray,siglevel=0.995, padfac = 5, pl=1,ar1 = T, output = 1, CLpwr = T)
pc1_mtm = mtm(pc1,siglevel=0.995, padfac = 5, pl=1,ar1 = T, output = 1, CLpwr = T)

## periods in years by applying sedimentation rate of 1.02 cm/kyr
# grayscale data
1/gray_mtm/1.02*100*1000
# pc1 data
1/pc1_mtm/1.02*100

#### grayscale data of M1-3 and M6-10 ####
# read data
m1 <- read.csv("m1.csv")
m2 <- read.csv("m2.csv")
m3 <- read.csv("m3.csv")
m6 <- read.csv("m6.csv")
m7 <- read.csv("m7.csv")
m8 <- read.csv("m8.csv")
m9 <- read.csv("m9.csv")
m10 <- read.csv("m10.csv")

# MTM
pdf("mtm.pdf")
mtm(m1,siglevel=0.995, pl=1,ar1 = T)
mtm(m2,siglevel=0.995, pl=1,ar1 = T)
mtm(m3,siglevel=0.99, pl=1,ar1 = T)
mtm(m6,siglevel=0.99, pl=1,ar1 = T)
mtm(m7,siglevel=0.995, pl=1,ar1 = T)
mtm(m8,siglevel=0.995, pl=1,ar1 = T)
mtm(m9,siglevel=0.995, pl=1,ar1 = T)
mtm(m10,siglevel=0.995, pl=1,ar1 = T)
dev.off()


