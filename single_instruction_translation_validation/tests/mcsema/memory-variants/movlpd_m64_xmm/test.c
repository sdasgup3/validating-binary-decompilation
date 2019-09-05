void leaf() {
  __asm__("movlpd %xmm1, -4(%rbp)");
  }

void main() {
  leaf();
}