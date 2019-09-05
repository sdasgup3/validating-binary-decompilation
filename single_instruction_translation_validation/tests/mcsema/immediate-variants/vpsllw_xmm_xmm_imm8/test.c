void leaf() {
  __asm__("vpsllw $0x77, %xmm2, %xmm1");
  }

void main() {
  leaf();
}