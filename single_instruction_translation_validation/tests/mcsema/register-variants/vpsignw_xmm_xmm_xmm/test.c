void leaf() {
  __asm__("vpsignw %xmm3, %xmm2, %xmm1");
  }

void main() {
  leaf();
}