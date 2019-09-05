void leaf() {
  __asm__("movapd %xmm2, %xmm1");
  }

void main() {
  leaf();
}