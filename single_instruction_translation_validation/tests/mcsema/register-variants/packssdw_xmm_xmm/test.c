void leaf() {
  __asm__("packssdw %xmm2, %xmm1");
  }

void main() {
  leaf();
}