#include<stdio.h>

int main()
{
int i,j,k;
int processes = 5;
int resources = 4;

int allocation[5][4] = {
{0,0,1,4},
{0,6,3,2},
{0,0,1,2},
{1,0,0,0},
{1,3,5,4}
};

int max[5][4] = {
{0,6,5,6},
{0,6,5,2},
{0,0,1,2},
{1,7,5,0},
{2,3,5,6}
};

int available[4] = {1,6,2,0};

int need[5][4];
int finish[5]={0};
int safeSeq[5];
int count=0;

printf("NEED MATRIX\n");

for(i=0;i<processes;i++)
{
for(j=0;j<resources;j++)
{
need[i][j]=max[i][j]-allocation[i][j];
printf("%d ",need[i][j]);
}
printf("\n");
}

while(count<processes)
{
for(i=0;i<processes;i++)
{
if(finish[i]==0)
{
int flag=0;

for(j=0;j<resources;j++)
{
if(need[i][j]>available[j])
{
flag=1;
break;
}
}

if(flag==0)
{
safeSeq[count++]=i;
finish[i]=1;

for(k=0;k<resources;k++)
{
available[k]+=allocation[i][k];
}
}
}
}
}

printf("\nSAFE SEQUENCE:\n");

for(i=0;i<processes;i++)
{
printf("P%d ",safeSeq[i]);
}

return 0;
}
