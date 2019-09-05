void leaf() {
  __asm__("vpsrlw %xmm3, %ymm2, %ymm1");
  }

void main() {
  leaf();
}