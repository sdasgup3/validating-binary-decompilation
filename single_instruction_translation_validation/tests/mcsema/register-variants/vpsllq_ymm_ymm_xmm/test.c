void leaf() {
  __asm__("vpsllq %xmm3, %ymm2, %ymm1");
  }

void main() {
  leaf();
}