void leaf() {
  __asm__("vpmovsxbd -4(%rbp), %xmm1");
  }

void main() {
  leaf();
}