void leaf() {
  __asm__("vpsrad %xmm3, %ymm2, %ymm1");
  }

void main() {
  leaf();
}