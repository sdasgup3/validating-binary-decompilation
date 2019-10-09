void array_reverse(int* arr, int len) {
  int start = 0;
  int end = len-1;

  while(start < end) {
    int tmp = arr[start];
    arr[start] = arr[end];
    arr[end] = tmp;
    start ++;
    end --;
  }
}

int main() {
  int arr[] = {40,30,20,10};
  array_reverse(arr, 4);

  return arr[0];
}
