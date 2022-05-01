#include<stdio.h>
#include<stdlib.h>
#include <stdlib.h>
int *indexArray=NULL;
double *tempArray=NULL;
int *isMaxArray=NULL;


void getList(int len)
{
	indexArray=malloc(sizeof(int)*len);
	tempArray=malloc(sizeof(double)*len);
	isMaxArray=malloc(sizeof(int)*len);
	for(int i=0;i<len;i++)
	{
		int index;
		double temp;
		scanf("%d%lf",&index,&temp);
		indexArray[i]=index;
		tempArray[i]=temp;
		int isMax=0;
		isMaxArray[i]=isMax;
		
	}
}
void findMax(int len)
{
	for(int i=3;i<len-3;i++)
	{
		if((tempArray[i]<=tempArray[i-1])
		   &&(tempArray[i]<=tempArray[i+1])
		   &&(tempArray[i]<=tempArray[i-2])
		   &&(tempArray[i]<=tempArray[i+2])
		   &&(tempArray[i]<=tempArray[i-3])
		   &&(tempArray[i]<=tempArray[i+3]))
			isMaxArray[i]=1;		     
	}
}
void printMax(int len)
{
	double old=0;
	for(int i=0;i<len;i++)
	{
		if(isMaxArray[i]==1)
		{
			if(tempArray[i]!=old)
			{
				printf("%i\t%f\n",indexArray[i],tempArray[i]);
				old=tempArray[i];
			}
		}
	}
}

void print(int len)
{
	for(int i=0;i<len;i++)
	{
		printf("log:%i\t%f\t%i\n",indexArray[i],tempArray[i],isMaxArray[i]);
	}
}	
int main(int argc,char **argv)
{
	int len=0;
	sscanf(argv[1],"%i",&len);
	getList(len);
	findMax(len);
	//print(len);
	printMax(len);
}
