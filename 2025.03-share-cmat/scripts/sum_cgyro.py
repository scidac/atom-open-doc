# provide sums of cgyro
import fileinput

data={}

for line in fileinput.input():
  larr=line.strip().split(',')
  lid,ln=larr[0].rsplit('_',1)
  if lid not in data:
    data[lid] = {}
  data[lid][ln]=[float(larr[1]),float(larr[2]),float(larr[3]),float(larr[4]),float(larr[5]),float(larr[6])]


# sum 32_t1-32_t4
my=[0.0,0.0,0.0,0.0,0.0,0.0]
for i in range(4):
  els=data["cgyro_32"]["t%i"%(i+1)]
  for j in range(6):
    my[j] += els[j]
print("cgyro_32_x4_sum,%.2f,%.2f,%.2f,%.2f,%.2f,%.2f"%tuple(my))

# sum 32_t1-32_t8
my=[0.0,0.0,0.0,0.0,0.0,0.0]
for i in range(8):
  els=data["cgyro_32"]["t%i"%(i+1)]
  for j in range(6):
    my[j] += els[j]
print("cgyro_32_x8_sum,%.2f,%.2f,%.2f,%.2f,%.2f,%.2f"%tuple(my))

