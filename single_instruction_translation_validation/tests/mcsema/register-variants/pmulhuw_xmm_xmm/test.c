void leaf() {
  __asm__("pmulhuw %xmm2, %xmm1");
  }

void main() {
  leaf();
}