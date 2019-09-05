void leaf() {
  __asm__("vpbroadcastd -4(%rbp), %ymm1");
  }

void main() {
  leaf();
}