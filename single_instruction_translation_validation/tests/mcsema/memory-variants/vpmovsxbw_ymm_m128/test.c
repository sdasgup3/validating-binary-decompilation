void leaf() {
  __asm__("vpmovsxbw -4(%rbp), %ymm1");
  }

void main() {
  leaf();
}