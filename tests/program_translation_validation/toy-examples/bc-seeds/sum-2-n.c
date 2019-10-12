int sum_2_n(int n) {
  int sum = 0, i;
  for(i = 0 ; i < n; i++) {
    sum += i;
  }
  return sum;
}

int main() {
  return sum_2_n(10);
}
