void leaf() {
  __asm__("vpsllq $0x77, %xmm2, %xmm1");
  }

void main() {
  leaf();
}