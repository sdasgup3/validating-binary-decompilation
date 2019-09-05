void leaf() {
  __asm__("vsqrtpd -4(%rbp), %ymm1");
  }

void main() {
  leaf();
}