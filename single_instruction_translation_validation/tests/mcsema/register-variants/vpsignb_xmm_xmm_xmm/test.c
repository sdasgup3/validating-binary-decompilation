void leaf() {
  __asm__("vpsignb %xmm3, %xmm2, %xmm1");
  }

void main() {
  leaf();
}