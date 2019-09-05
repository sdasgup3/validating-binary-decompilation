void leaf() {
  __asm__("vpbroadcastq -4(%rbp), %ymm1");
  }

void main() {
  leaf();
}