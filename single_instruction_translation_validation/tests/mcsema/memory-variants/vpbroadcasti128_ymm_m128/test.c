void leaf() {
  __asm__("vpbroadcasti128 -4(%rbp), %ymm1");
  }

void main() {
  leaf();
}