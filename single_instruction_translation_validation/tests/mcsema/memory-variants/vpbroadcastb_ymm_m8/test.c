void leaf() {
  __asm__("vpbroadcastb -4(%rbp), %ymm1");
  }

void main() {
  leaf();
}