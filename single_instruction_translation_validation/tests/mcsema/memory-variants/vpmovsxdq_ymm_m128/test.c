void leaf() {
  __asm__("vpmovsxdq -4(%rbp), %ymm1");
  }

void main() {
  leaf();
}