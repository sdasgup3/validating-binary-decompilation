void leaf() {
  __asm__("cvtss2sil %xmm1, %ebx");
  }

void main() {
  leaf();
}