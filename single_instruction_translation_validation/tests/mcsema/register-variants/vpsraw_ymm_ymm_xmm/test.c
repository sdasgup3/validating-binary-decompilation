void leaf() {
  __asm__("vpsraw %xmm3, %ymm2, %ymm1");
  }

void main() {
  leaf();
}