int sum_2_n(int n) {
  int sum = 0;
  for(int i = 0 ; i < n; i++) {
    sum += i;
  }
  return sum;
}

int main() {
  return sum_2_n(10);
}
