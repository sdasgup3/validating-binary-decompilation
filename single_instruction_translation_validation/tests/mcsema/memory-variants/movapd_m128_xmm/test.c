void leaf() {
  __asm__("movapd %xmm1, -4(%rbp)");
  }

void main() {
  leaf();
}