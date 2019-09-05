void leaf() {
  __asm__("phminposuw -4(%rbp), %xmm1");
  }

void main() {
  leaf();
}