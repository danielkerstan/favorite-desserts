library(tidyverse)
library(here)

iconic_desserts <- tibble::tribble(
  ~rank,                  ~dessert,
     1L,  "Chocolate chip cookies",
     2L,               "Apple pie",
     3L,              "Cheesecake",
     4L,               "Pecan pie",
     5L,             "Carrot cake",
     6L,               "Ice cream",
     7L,        "Boston cream pie",
     8L,          "Banana pudding",
     9L,            "Baked Alaska",
    10L,                "Buckeyes",
    11L, "Indiana sugar cream pie",
    12L,                 "S'mores",
    13L,               "Lane cake",
    14L,          "Bananas foster",
    15L, "Black and white cookies",
    16L,              "Swiss roll",
    17L,               "Shave ice",
    18L,          "Coca-Cola cake",
    19L,    "Rice Krispies treats",
    20L,             "Pumpkin pie",
    21L,         "Red velvet cake",
    22L,             "Funnel cake",
    23L,     "Lady Baltimore cake",
    24L,                "Pralines",
    25L,           "Lemon squares",
    26L,           "Peach cobbler",
    27L,    "Mississippi mud cake",
    28L,            "Icebox cakes",
    29L,                  "Donuts",
    30L,       "Gooey butter cake",
    31L,                   "Fudge",
    32L,            "Banana split",
    33L,                  "Jell-O",
    34L,               "Chess pie",
    35L,   "Sour cream pound cake",
    36L,            "Key lime pie",
    37L,              "Cherry pie",
    38L,        "Seven-layer bars",
    39L,            "Coconut cake",
    40L,                "Brownies",
    41L,                "Blondies",
    42L,            "Whoopie pies"
  )


iconic_desserts <- iconic_desserts %>% 
  mutate(fav = tolower(dessert))

favorite_desserts <- read_csv(here("favorite_desserts.csv")) %>% 
  mutate(fav = tolower(Favorite_dessert))


for (i in seq_along(iconic_desserts$fav)) {
  for (j in seq_along(favorite_desserts$fav)) {
    
    if (str_detect(favorite_desserts$fav[j], pattern = iconic_desserts$fav[i])) {
      print(paste(favorite_desserts[j,"first_name"], "chose the iconic dessert", iconic_desserts[i,"fav"], "which is ranked", iconic_desserts[i,"rank"]))
    }
    
  }
}

  
  

  
