void leaf() {
  __asm__("vpsllq %xmm3, %xmm2, %xmm1");
  }

void main() {
  leaf();
}