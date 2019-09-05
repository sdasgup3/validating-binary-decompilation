void leaf() {
  __asm__("vcvttsd2sil %xmm1, %ebx");
  }

void main() {
  leaf();
}