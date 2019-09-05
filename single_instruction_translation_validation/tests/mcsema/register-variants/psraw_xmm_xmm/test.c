void leaf() {
  __asm__("psraw %xmm2, %xmm1");
  }

void main() {
  leaf();
}