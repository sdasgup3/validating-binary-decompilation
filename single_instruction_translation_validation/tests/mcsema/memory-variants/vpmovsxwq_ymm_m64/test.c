void leaf() {
  __asm__("vpmovsxwq -4(%rbp), %ymm1");
  }

void main() {
  leaf();
}