import csv
import hashlib


with open('CUCSmember.csv',"r",encoding="utf-8") as file:
  reader = csv.reader(file, delimiter=',')
  result = ""
  template = "Member.create('CUCSID':'%s')"
  for row in reader:
     
    if row[5] == "Email":
      continue
    print("Processing: ",row[5]) 
    cucsId = hashlib.sha256(row[5].encode('utf-8')).hexdigest() 
    result += template%cucsId
    result += " \n"

  with open('seeds.rb','w+') as seedFile:
    seedFile.write(result)


