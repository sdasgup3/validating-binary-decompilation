void leaf() {
  __asm__("vphminposuw %xmm2, %xmm1");
  }

void main() {
  leaf();
}