void leaf() {
  __asm__("vcvttss2sil %xmm1, %ebx");
  }

void main() {
  leaf();
}