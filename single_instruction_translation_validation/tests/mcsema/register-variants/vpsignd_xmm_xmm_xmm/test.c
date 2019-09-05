void leaf() {
  __asm__("vpsignd %xmm3, %xmm2, %xmm1");
  }

void main() {
  leaf();
}