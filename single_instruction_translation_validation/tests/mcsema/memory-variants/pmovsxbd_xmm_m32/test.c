void leaf() {
  __asm__("pmovsxbd -4(%rbp), %xmm1");
  }

void main() {
  leaf();
}