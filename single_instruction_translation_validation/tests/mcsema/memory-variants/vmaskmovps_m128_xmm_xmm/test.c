void leaf() {
  __asm__("vmaskmovps %xmm2, %xmm1, -4(%rbp)");
  }

void main() {
  leaf();
}