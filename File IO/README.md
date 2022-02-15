## Quetions
### Why readines was not printing \n?
#### Answer
> .readines read the line and store in array. We throw the array to puts which prints it out. If in a line has ```\n``` then consider as a new line same like all other languages or if we use ```p``` or ```print``` then we can show the ```\n```.  <br> puts File.open("something.txt").readlines

### ``` ruby file_copy.rb < sometext.txt > everything.txt ``` <br>why above command first started writing from sometext.txt into file_copy.rb and not directly writing to everything.txt 

#### Answer
> file_copy.rb first take a ```sometext.txt``` as a input and then output of the ```file_copy.rb``` overwrite into ```everything.txt```

