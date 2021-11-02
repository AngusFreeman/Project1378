chidecision <- function(chifit1) {
  if(chifit1[[3]] < 0.05) {
    print("Decision: Reject null hypothesis")
  } else {
    print("Decision: Do not reject null hypothesis")
  }
}
chidecision(chifit1)
