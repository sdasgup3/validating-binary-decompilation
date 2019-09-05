void leaf() {
  __asm__("psignd %xmm2, %xmm1");
  }

void main() {
  leaf();
}