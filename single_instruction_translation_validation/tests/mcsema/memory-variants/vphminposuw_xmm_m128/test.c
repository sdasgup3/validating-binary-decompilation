void leaf() {
  __asm__("vphminposuw -4(%rbp), %xmm1");
  }

void main() {
  leaf();
}