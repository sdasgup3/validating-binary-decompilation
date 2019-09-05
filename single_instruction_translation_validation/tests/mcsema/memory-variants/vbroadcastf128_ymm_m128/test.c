void leaf() {
  __asm__("vbroadcastf128 -4(%rbp), %ymm1");
  }

void main() {
  leaf();
}