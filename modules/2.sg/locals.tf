 #Distinct takes a list and return a new  list with any duplicate elements removed.
#toset takes a list and remove any duplicate elements and discard the ordering of the elements.
locals {
  ports_in = [
    443,
    80,
    22,
    3389,
    445,
    8080
  ]
  ports_out = [
    22,
    3389,
    80,
    443,
    8080
  ]
}