#seive of Erathosthenes
n=int(input())
l=[1 for i in range(n)]
l[0]=l[1]=0
p=2
count=0
while (p*p<n)://up to sqrt of n
  if l[p]==1:
    for i in range(p*p,n,p):
      l[i]=0
  p=p+1
for i in range(2,n):
  if l[i]:
    count+=1
    print(i) 
print("count of primes up to n",count)
