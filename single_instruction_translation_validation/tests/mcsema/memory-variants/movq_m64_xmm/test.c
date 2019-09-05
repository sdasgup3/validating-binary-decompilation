void leaf() {
  __asm__("movq %xmm1, -4(%rbp)");
  }

void main() {
  leaf();
}