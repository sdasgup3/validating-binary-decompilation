void leaf() {
  __asm__("phminposuw %xmm2, %xmm1");
  }

void main() {
  leaf();
}