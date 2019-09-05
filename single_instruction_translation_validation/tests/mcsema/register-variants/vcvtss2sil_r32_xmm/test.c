void leaf() {
  __asm__("vcvtss2sil %xmm1, %ebx");
  }

void main() {
  leaf();
}