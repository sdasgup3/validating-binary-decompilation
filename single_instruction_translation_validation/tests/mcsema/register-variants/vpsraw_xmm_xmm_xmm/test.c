void leaf() {
  __asm__("vpsraw %xmm3, %xmm2, %xmm1");
  }

void main() {
  leaf();
}