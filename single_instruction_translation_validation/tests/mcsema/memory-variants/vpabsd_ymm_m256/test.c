void leaf() {
  __asm__("vpabsd -4(%rbp), %ymm1");
  }

void main() {
  leaf();
}