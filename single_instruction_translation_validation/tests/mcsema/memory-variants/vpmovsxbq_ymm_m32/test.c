void leaf() {
  __asm__("vpmovsxbq -4(%rbp), %ymm1");
  }

void main() {
  leaf();
}