void leaf() {
  __asm__("movupd %xmm1, -4(%rbp)");
  }

void main() {
  leaf();
}