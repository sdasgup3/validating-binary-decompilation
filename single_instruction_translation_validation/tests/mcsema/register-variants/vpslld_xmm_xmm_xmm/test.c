void leaf() {
  __asm__("vpslld %xmm3, %xmm2, %xmm1");
  }

void main() {
  leaf();
}