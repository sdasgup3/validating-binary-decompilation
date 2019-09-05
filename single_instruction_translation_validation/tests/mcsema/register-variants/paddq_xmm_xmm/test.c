void leaf() {
  __asm__("paddq %xmm2, %xmm1");
  }

void main() {
  leaf();
}