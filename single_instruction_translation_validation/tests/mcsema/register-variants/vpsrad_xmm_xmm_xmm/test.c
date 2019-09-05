void leaf() {
  __asm__("vpsrad %xmm3, %xmm2, %xmm1");
  }

void main() {
  leaf();
}