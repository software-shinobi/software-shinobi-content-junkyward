import re

def checkForTitleAttribute(someStr):

    if "title" not in someStr:
        return False;
    else:
        return True;

f = open("test.txt", "r");

fileContents = f.read();

everyOccurrenceOfIframeTagSet = re.findall("<iframe.*</iframe>", fileContents)

counter = 1

for element in everyOccurrenceOfIframeTagSet:

    containsTitleAttribute=checkForTitleAttribute(element)

    if(containsTitleAttribute == False):
        print("Doesn't Contain A Title Element: ",element);
