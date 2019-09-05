void leaf() {
  __asm__("vpabsw -4(%rbp), %ymm1");
  }

void main() {
  leaf();
}