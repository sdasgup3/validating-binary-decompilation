void leaf() {
  __asm__("vcvtsd2sil %xmm1, %ebx");
  }

void main() {
  leaf();
}