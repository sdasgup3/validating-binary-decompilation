void leaf() {
  __asm__("pblendvb %xmm0, %xmm2, %xmm1");
  }

void main() {
  leaf();
}