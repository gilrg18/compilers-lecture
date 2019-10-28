#include <stdio.h>
#include <time.h>

int proc(int a[]) {
	int sum = 0, i;
	for (i=0; i < 1000000; i++){
		sum += a[i];
    }
	return sum;
	}

int main(){
   int a[1000000];
   for(int i = 0; i<1000000; i++){
       a[i]=i;      
   }

   clock_t start, end;
   double cpu_time_used;
   start = clock();

   printf("Result %d ", proc(a));

   end = clock();
   cpu_time_used = ((double)(end-start))/ CLOCKS_PER_SEC;
   printf("Time: %f ", cpu_time_used);
   return 0;
}

