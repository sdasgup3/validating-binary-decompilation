void leaf() {
  __asm__("vextractf128 $0x77, %ymm1, %xmm1");
  }

void main() {
  leaf();
}