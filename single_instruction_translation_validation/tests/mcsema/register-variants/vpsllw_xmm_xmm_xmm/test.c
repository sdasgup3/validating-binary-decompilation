void leaf() {
  __asm__("vpsllw %xmm3, %xmm2, %xmm1");
  }

void main() {
  leaf();
}