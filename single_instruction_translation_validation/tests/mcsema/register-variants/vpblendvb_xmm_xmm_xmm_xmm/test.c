void leaf() {
  __asm__("vpblendvb %xmm4, %xmm3, %xmm2, %xmm1");
  }

void main() {
  leaf();
}