void leaf() {
  __asm__("vlddqu -4(%rbp), %ymm1");
  }

void main() {
  leaf();
}