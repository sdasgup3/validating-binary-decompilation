void leaf() {
  __asm__("vpmovsxwd -4(%rbp), %ymm1");
  }

void main() {
  leaf();
}