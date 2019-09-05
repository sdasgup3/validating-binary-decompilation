void leaf() {
  __asm__("movups %xmm1, -4(%rbp)");
  }

void main() {
  leaf();
}