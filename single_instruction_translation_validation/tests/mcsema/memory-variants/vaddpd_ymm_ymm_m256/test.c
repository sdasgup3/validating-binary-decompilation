void leaf() {
  __asm__("vaddpd -4(%rbp), %ymm2, %ymm1");
  }

void main() {
  leaf();
}