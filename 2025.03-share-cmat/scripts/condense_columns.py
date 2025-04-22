# The raw CGYRO timing file uses the following fine grained timeing
# str      str_mem   str_comm      nl        nl_mem    nl_comm      field  field_com      shear      coll    coll_mem  coll_comm      io         TOTAL
# Output the following condensed mapping
# nl str coll nl_comm str_comm coll_comm

import fileinput

for line in fileinput.input():
  larr=line.strip().split(',')
  n=float(larr[4])+float(larr[5])
  s=float(larr[1])+float(larr[2])+float(larr[7])
  c=float(larr[10])+float(larr[11])
  nc=float(larr[6])
  sc=float(larr[3])+float(larr[8])
  cc=float(larr[12])
  print("%s,%.2f,%.2f,%.2f,%.2f,%.2f,%.2f"%(larr[0],n,s,c,nc,sc,cc))
