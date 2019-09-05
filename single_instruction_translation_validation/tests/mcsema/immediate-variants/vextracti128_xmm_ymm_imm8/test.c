void leaf() {
  __asm__("vextracti128 $0x77, %ymm1, %xmm1");
  }

void main() {
  leaf();
}