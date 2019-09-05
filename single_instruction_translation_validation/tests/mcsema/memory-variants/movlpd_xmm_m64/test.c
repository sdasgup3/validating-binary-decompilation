void leaf() {
  __asm__("movlpd -4(%rbp), %xmm1");
  }

void main() {
  leaf();
}