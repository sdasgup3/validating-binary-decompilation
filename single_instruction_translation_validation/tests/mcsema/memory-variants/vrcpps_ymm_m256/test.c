void leaf() {
  __asm__("vrcpps -4(%rbp), %ymm1");
  }

void main() {
  leaf();
}