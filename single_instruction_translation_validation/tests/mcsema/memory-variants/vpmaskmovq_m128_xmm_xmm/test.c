void leaf() {
  __asm__("vpmaskmovq %xmm2, %xmm1, -4(%rbp)");
  }

void main() {
  leaf();
}