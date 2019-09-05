void leaf() {
  __asm__("pmovsxbw -4(%rbp), %xmm1");
  }

void main() {
  leaf();
}