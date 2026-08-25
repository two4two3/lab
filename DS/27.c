// 27. Merge Intervals Problem
// Given a set of time intervals in any order, our task is to merge all overlapping intervals
// into one and output the result which should have only mutually exclusive intervals.
#include <stdio.h>
#define N 10

typedef struct interval
{
    int start;
    int end;
} interval_t;

interval_t S[N];
int TOP = -1;

void push(interval_t newInterval){
    if(TOP>=N-1){
        printf("Stack Overflow!\n");
        return;
    }
    TOP++;
    S[TOP].start = newInterval.start;
    S[TOP].end = newInterval.end;
}
interval_t pop(){
    if(TOP == -1){
        printf("Stack Underflow!\n");
        return;
    }
    return S[TOP--];
}

void merge_intervals(interval_t input_intervals[], int len){

    push(input_intervals[0]);
    printf("S[0]:{%d,%d}\n",S[0].start,S[0].end);
    for(int i=1; i<len; i++)
    {
        interval_t popped = pop();
        printf("\npopped:%d,%d\n", popped.start, popped.end);
        printf("\nCurrent:%d,%d\n\n",input_intervals[i].start, input_intervals[i].end);
        if(popped.end >= input_intervals[i].start){
            // merge logic
            int end = input_intervals[i].end; 
            if(popped.end > input_intervals[i].end) end = popped.end;

            interval_t merged_interval = {popped.start,end};
            push(merged_interval);
        }else{
            push(popped);
            push(input_intervals[i]);
        }
    }
}

void sort_intervals(interval_t input_intervals[] ,int len){
    for(int i=0; i<len-1; i++){
        for(int j=i+1; j<len; j++){
            // j < i then swap
            if(input_intervals[j].start < input_intervals[i].start){
                // temp = i
                interval_t temp_interval = {input_intervals[i].start,input_intervals[i].end};
                // i = j
                input_intervals[i].start = input_intervals[j].start;
                input_intervals[i].end =  input_intervals[j].end;
                // j = temp
                input_intervals[j].start = temp_interval.start;
                input_intervals[j].end =  temp_interval.end;
            }
            
        }
    }
    for(int i=0; i<len; i++){
        printf("{%d,%d},",input_intervals[i].start, input_intervals[i].end);
    }
    printf("\n");
}

void print_intervals(){
    printf("printing intervals:\n");
    for(int i=0; i<=TOP; i++)
    {
        printf("{%d,%d},\t", S[i].start, S[i].end);
    }
}

void main()
{
    // Input: Intervals = {{1,3},{2,4},{6,8},{9,10}}
    // Output: {{1, 4}, {6, 8}, {9, 10}}
    interval_t input_intervals[4];
    for(int i=0; i<4; i++)
    {
        int x,y;
        printf("Enter Interval %d\n",i);
        printf("start:");
        scanf("%d", &x);
        printf("end:");
        scanf("%d", &y);
        interval_t current = {x,y};
        input_intervals[i] = current;
    }
    printf("\n");
    sort_intervals(input_intervals,4);
    merge_intervals(input_intervals,4);
    print_intervals();
    
}