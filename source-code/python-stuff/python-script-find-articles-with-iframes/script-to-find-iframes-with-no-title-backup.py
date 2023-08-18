#print("Hello, World!");
#print("Goodbye, World!");
#print("");

f = open("test.txt", "r");

#print("File Contents: ");
# print(f.read())

test = f.read();

#print("");
#print("variable print");

print(test);


import re

txt = "The rain in Spain"
x = re.findall("<iframe.*title.*>", test)

counter = 1
for element in x:
    print("");
    print(counter, ") element: ", element);
    counter = counter + 1;


#print("result",x);
