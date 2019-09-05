void leaf() {
  __asm__("vpmovsxbd -4(%rbp), %ymm1");
  }

void main() {
  leaf();
}