int binary_search(int* arr, int len, int target) {
  int start = 0;
  int end = len-1;

  while(start < end) {
    int mid = start + (end-start)/2;

    if(arr[mid] == target) {
      return mid;
    }

    if(target > arr[mid]) {
      start = mid +1;
    } else {
      end = mid -1;
    }
  }

  return -1;
}

int main() {
  int arr[] = {40,30,20,10};
  return binary_search(arr, 4, 30);
}
