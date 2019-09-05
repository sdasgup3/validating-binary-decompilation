void leaf() {
  __asm__("vpmaskmovd %xmm2, %xmm1, -4(%rbp)");
  }

void main() {
  leaf();
}