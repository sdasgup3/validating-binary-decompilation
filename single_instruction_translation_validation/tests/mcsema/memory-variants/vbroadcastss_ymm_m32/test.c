void leaf() {
  __asm__("vbroadcastss -4(%rbp), %ymm1");
  }

void main() {
  leaf();
}