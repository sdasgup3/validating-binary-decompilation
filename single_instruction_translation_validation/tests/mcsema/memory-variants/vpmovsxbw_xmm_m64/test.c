void leaf() {
  __asm__("vpmovsxbw -4(%rbp), %xmm1");
  }

void main() {
  leaf();
}