void leaf() {
  __asm__("vpsrlq %xmm3, %ymm2, %ymm1");
  }

void main() {
  leaf();
}